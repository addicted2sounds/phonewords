require 'spec_helper'

describe PhoneWords::Finder do
  describe '.words' do
    let(:phone) { 6686787825 }
    let(:finder) { described_class.new }
    subject { finder.words(phone) }

    it { is_expected.to be_a Array }
    it 'returns possible words'
  end
end