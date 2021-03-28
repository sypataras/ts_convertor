# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TsConvertor::Speed do
  subject { described_class.new(*class_params).convert(meth_param) }

  describe '.convert' do
    let(:meth_param) { 100 }

    context 'km to mile' do
      let(:class_params) { %w[km_h mile_h] }

      it 'success' do
        result = subject
        expect(result).to eq(62.137119)
      end
    end

    context 'mile to km' do
      let(:class_params) { %w[mile_h km_h] }

      it 'success' do
        result = subject
        expect(result).to eq(160.9344)
      end
    end

    context 'wrong params' do
      let(:class_params) { %w[gde km_h] }

      it { expect { subject }.to raise_error StandardError }
    end
  end
end
