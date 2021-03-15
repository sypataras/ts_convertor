# frozen_string_literal: true

module TsConvertor
  class Speed
    SIZE = %w[km_h mile_h].freeze

    def self.convert_speed(val, from, to)
      check_variables(from, to)
      val * send(from, to)
    end

    private

    def check_variables(from, to)
      raise StandardError, "FROM variable is undefined, valid variables = #{SIZE}" unless SIZE.include?(from)
      raise StandardError, "TO variable is undefined, valid variables = #{SIZE}" unless SIZE.include?(to)
    end

    def km_h(to)
      return 1 if to.eql?('km_h')
      return 0.62137119 if to.eql?('mile_h')
    end

    def mile_h(to)
      return 1 if to.eql?('mile_h')
      return 1.609344 if to.eql?('km_h')
    end
  end
end
