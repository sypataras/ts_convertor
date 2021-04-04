# frozen_string_literal: true

require 'ts_convertor/config'

module TsConvertor
  class Length
    include Config

    SIZE = %w[km mile meter yard foot].freeze

    attr_reader :from, :to

    def initialize(from, to)
      @from = from
      @to = to
    end

    def convert(val)
      check_variables(SIZE)
      val * send(from)
    end

    private

    def km
      return 1 if to.eql?('km')
      return 0.62137119 if to.eql?('mile')
      return 1000 if to.eql?('meter')
      return 1093.6133 if to.eql?('yard')
      return 3280.8399 if to.eql?('foot')
    end

    def mile
      return 1 if to.eql?('mile')
      return 1.609344 if to.eql?('km')
      return 1609.344 if to.eql?('meter')
      return 1760 if to.eql?('yard')
      return 5280 if to.eql?('foot')
    end

    def meter
      return 1 if to.eql?('meter')
      return 0.001 if to.eql?('km')
      return 0.0062137 if to.eql?('mile')
      return 1.0936133 if to.eql?('yard')
      return 3.2808399 if to.eql?('foot')
    end

    def yard
      return 1 if to.eql?('yard')
      return 0.0009144 if to.eql?('km')
      return 0.0005682 if to.eql?('mile')
      return 0.9144 if to.eql?('meter')
      return 3 if to.eql?('foot')
    end

    def foot
      return 1 if to.eql?('foot')
      return 0.0003048 if to.eql?('km')
      return 0.00018939394 if to.eql?('mile')
      return 0.3048 if to.eql?('meter')
      return 0.33333333 if to.eql?('yard')
    end
  end
end
