# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TsConvertor::Weight do
  subject { described_class.new(*class_params).convert(meth_param) }

  describe '.convert' do
    let(:meth_param) { 100 }

    context 'kg to gram' do
      let(:class_params) { %w[kg gram] }

      it 'success' do
        result = subject
        expect(result).to eq(100000)
      end
    end

    context 'ton to pound' do
      let(:class_params) { %w[ton pound] }

      it 'success' do
        result = subject
        expect(result).to eq(220462.26)
      end
    end

    context 'wrong params' do
      let(:class_params) { %w[gde gram] }

      it { expect { subject }.to raise_error StandardError }
    end
  end
end
