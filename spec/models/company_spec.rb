require 'rails_helper'

describe Company do
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:contact_name) }
  it { is_expected.to respond_to(:phone) }
  it { is_expected.to respond_to(:email) }

  describe '#email' do
    it 'is required' do
      company = Company.new(email: '')
      expect(company.valid?).to be_falsey
    end

    it 'is valid length' do
      company = Company.new(email: 'pro@email.org.net')
      expect(company.valid?).to be_truthy
    end
  end
end
