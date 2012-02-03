require 'turn/configuration'  # why is this needed here?

begin
  require 'ansi/code'
rescue LoadError
  begin
    require 'rubygems'
    require 'ansi/code'
  rescue LoadError
  end
end

module Turn

  # Provides a uniform interface for colorizing Turn output.
  #
  module Colorize

    COLORLESS_TERMINALS = ['dumb']

    def self.colorize?
      @colorize ||= (
        ansi = Turn.config.ansi?
        if ansi.nil?
          color_supported?
        else
          Turn.config.ansi?
        end
      )
    end

    def self.color_supported?
      return false unless defined?(::ANSI::Code)
      return false unless $stdout.tty?
      return true if ENV.has_key?('TERM') && !COLORLESS_TERMINALS.include?(ENV['TERM'])
      return true if ::RbConfig::CONFIG['host_os'] =~ /mswin|mingw/ && ENV.has_key?('ANSICON')
      return false
    end

    def self.red(string)
      colorize? ? ::ANSI::Code.red{ string } : string
    end

    def self.green(string)
      colorize? ? ::ANSI::Code.green{ string } : string
    end

    def self.blue(string)
      colorize? ? ::ANSI::Code.blue{ string } : string
    end

    def self.magenta(string)
      colorize? ? ::ANSI::Code.magenta{ string } : string
    end

    def self.bold(string)
      colorize? ? ::ANSI::Code.bold{ string } : string
    end

    def self.pass(string)
      colorize? ? ::ANSI::Code.green{ string } : string
    end

    def self.fail(string)
      colorize? ? ::ANSI::Code.red{ string } : string
    end

    def self.error(string)
      #colorize? ? ::ANSI::Code.white_on_red{ string } : string
      colorize? ? ::ANSI::Code.yellow{ string } : string
    end

    def self.skip(string)
      colorize? ? ::ANSI::Code.cyan{ string } : string
    end

    PASS  = pass('PASS')
    FAIL  = fail('FAIL')
    ERROR = error('ERROR')
    SKIP  = skip('SKIP')

    def colorize?
      Colorize.colorize?
    end

  end

end

