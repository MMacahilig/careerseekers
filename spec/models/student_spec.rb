require 'rails_helper'

describe Student do
  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:phone) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:current_status) }
  it { is_expected.to respond_to(:degree) }
  it { is_expected.to respond_to(:preferred_placement_industry) }

  describe '#email' do
    it 'is required' do
      student = Student.new(email: '')
      expect(student.valid?).to be_falsey
    end

    it 'is valid length' do
      student = Student.new(email: 'student@email.org.net')
      expect(student.valid?).to be_truthy
    end
  end
end
