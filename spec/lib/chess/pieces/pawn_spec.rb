require 'spec_helper'

RSpec.describe Chess::Pieces::Pawn do
  describe '#to_s' do
    subject { described_class.new(color).to_s }

    context 'when white' do
      let(:color) { :white }

      it { is_expected.to eq('♙') }
    end

    context 'when black' do
      let(:color) { :black }

      it { is_expected.to eq('♟') }
    end
  end
end
