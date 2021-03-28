# frozen_string_literal: true

require 'ts_convertor/config'

module TsConvertor
  class Weight
    include TsConvertor::Config

    SIZE = %w[kg pound ton gram].freeze

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

    def kg
      return 1 if to.eql?('kg')
      return 1000 if to.eql?('gram')
      return 0.001 if to.eql?('ton')
      return 2.2046226 if to.eql?('pound')
    end

    def gram
      return 1 if to.eql?('gram')
      return 0.001 if to.eql?('gram')
      return 0.00001 if to.eql?('ton')
      return 0.0022046226 if to.eql?('pound')
    end

    def ton
      return 1 if to.eql?('ton')
      return 1000 if to.eql?('kg')
      return 1_000_000 if to.eql?('gram')
      return 2204.6226 if to.eql?('pound')
    end

    def pound
      return 1 if to.eql?('pound')
      return 0.45359237 if to.eql?('kg')
      return 453.59237 if to.eql?('gram')
      return 0.00045359237 if to.eql?('ton')
    end
  end
end
