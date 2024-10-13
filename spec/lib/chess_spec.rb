require 'spec_helper'

RSpec.describe Chess do
  describe '.play' do
    subject(:play) { described_class.play }

    it { is_expected.to be_an(Array) }
    it { expect(play.size).to eq(8) }
    it { expect(play.map(&:size)).to all(be(8)) }
  end
end
