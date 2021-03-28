# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TsConvertor do
  it 'has a version number' do
    expect(TsConvertor::VERSION).not_to be nil
  end

  describe '.speed_convert' do
    it 'speed success' do
      expect(TsConvertor.speed_convert(60, 'km_h', 'mile_h')).to eq(37.2822714)
    end

    it 'weight success' do
      expect(TsConvertor.weight_convert(10, 'kg', 'ton')).to eq(0.01)
    end
  end
end
