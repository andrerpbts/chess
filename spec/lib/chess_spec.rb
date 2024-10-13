require 'spec_helper'

RSpec.describe Chess do
  describe '.play' do
    subject(:play) { described_class.play }

    before do
      allow($stdout).to receive(:write)
    end

    it { is_expected.to be_an(Chess::Board) }
  end
end
