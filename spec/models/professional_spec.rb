require 'rails_helper'

describe Professional do
  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:phone) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:current_status) }
  it { is_expected.to respond_to(:degree) }
  it { is_expected.to respond_to(:preferred_placement_industry) }

  describe '#email' do
    it 'is required' do
      professional = Professional.new(email: '')
      expect(professional.valid?).to be_falsey
    end

    it 'is valid length' do
      professional = Professional.new(email: 'pro@email.org.net')
      expect(professional.valid?).to be_truthy
    end
  end

  describe '#degree' do
    it 'is not required' do
      professional = Professional.new(email: 'abc@xyz.com', degree: '')
      expect(professional.valid?).to be_truthy
    end

    it 'is valid if 75 chars' do
      this_is_75_chars = 'VaBZgM4bFSqwLEz5eYv4pQKVxabPI22TywJXz6IlCHvBk63rSUm5Bzcm6zhXcDbFPtyb1pScCBn'
      professional = Professional.new(email: 'abc@xyz.com', degree: this_is_75_chars)
      expect(professional.valid?).to be_truthy
    end

    it 'is invalid if over 75 chars' do
      this_is_76_chars = 'VaBZgM4bFSqwLEz5eYv4pQKVxabPI22TywJXz6IlCHvBk63rSUm5Bzcm6zhXcDbFPtyb1pScCBnN'
      professional = Professional.new(email: 'abc@xyz.com', degree: this_is_76_chars)
      expect(professional.valid?).to be_falsey
    end
  end
end
