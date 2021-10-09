# frozen_string_literal: true

module Funcky
  # Configuration access for Funcky
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end
  
    def reset
      @configuration = Configuration.new
    end
  
    def configure
      yield(configuration)
    end  
  end

  # Configuration class
  class Configuration
    attr_accessor :tokenizer,
                  :padl_count,
                  :padl_char,
                  :padr_count,
                  :padr_char

    def initialize
      @tokenizer = Funcky::StringTokenizer.new
      @padr_count = 30
      @padr_char = ' '
      @padl_count = 30
      @padl_char = ' '
    end
  end
end
