require 'spec_helper'

RSpec.describe Chess::Board do
  describe '#squares' do
    subject(:squares) { described_class.new.squares }

    it { expect(squares.size).to eq(8) }
    it { expect(squares.map(&:size)).to all(be(8)) }
  end
end
