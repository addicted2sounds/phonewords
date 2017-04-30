require 'spec_helper'

describe PhoneWords::Finder do
  describe '.words' do
    let(:phone) { 6686787825 }
    let(:finder) { described_class.new }
    subject { finder.words(phone) }

    it { is_expected.to be_a Array }
    it 'includes test combination' do
      is_expected.to include %w(MOTOR USUAL)
    end
    context 'when one word only' do
      let(:phone) { 66867 }
      it { p subject; is_expected.to eq [%w(MOTOR), %w(NOUNS)] }
    end
  end
  describe '.word_to_numbers' do
    let(:word) { 'MOTEL' }
    subject { finder.send :word_to_numbers, word }

    it { is_expected.to eq '66835' }
  end
end