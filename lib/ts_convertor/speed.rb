# frozen_string_literal: true

require 'ts_convertor/config'

module TsConvertor
  class Speed
    include Config

    SIZE = %w[km_h km_m mile_h mile_m knots].freeze

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

    def km_h
      return 1 if to.eql?('km_h')
      return 0.016666667 if to.eql?('km_m')
      return 0.62137119 if to.eql?('mile_h')
      return 0.010356187 if to.eql?('mile_m')
      return 0.5399568 if to.eql?('knots')
    end

    def km_m
      return 1 if to.eql?('km_m')
      return 60 if to.eql?('km_h')
      return 37.282272 if to.eql?('mile_h')
      return 0.62137119 if to.eql?('mile_m')
      return 32.397408 if to.eql?('knots')
    end

    def mile_h
      return 1 if to.eql?('mile_h')
      return 1.609344 if to.eql?('km_h')
      return 0.0268224 if to.eql?('km_m')
      return 0.016666667 if to.eql?('mile_m')
      return 0.86897624 if to.eql?('knots')
    end

    def mile_m
      return 1 if to.eql?('mile_m')
      return 96.56064 if to.eql?('km_h')
      return 1.609344 if to.eql?('km_m')
      return 60 if to.eql?('mile_h')
      return 52.138574 if to.eql?('knots')
    end

    def knots
      return 1 if to.eql?('knots')
      return 1.852 if to.eql?('km_h')
      return 0.030866667 if to.eql?('km_m')
      return 1.1507794 if to.eql?('mile_h')
      return 0.019179657 if to.eql?('mile_m')
    end
  end
end
