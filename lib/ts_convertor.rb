# frozen_string_literal: true

require 'ts_convertor/version'
require 'ts_convertor/speed'
require 'ts_convertor/weight'

module TsConvertor
  class Error < StandardError; end

  METHODS = %w[speed weight].freeze

  class << self
    METHODS.each do |method|
      define_method "#{method}_convert" do |val, from, to|
        current_object = Object.const_get("TsConvertor::#{method.capitalize}").new(from, to)
        current_object.convert(val)
      rescue StandardError
        raise Error, "Can not convert #{method} !!!"
      end
    end
  end
end
