# frozen_string_literal: true

module TsConvertor
  module Config
    def check_variables(size)
      raise Error, "FROM variable is undefined, valid variables = #{size}" unless size.include?(from)
      raise Error, "TO variable is undefined, valid variables = #{size}" unless size.include?(to)
    end
  end
end
