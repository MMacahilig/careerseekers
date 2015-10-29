require 'rails_helper'

describe Professional do
  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:phone) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:current_status) }
  it { is_expected.to respond_to(:degree) }

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
end
