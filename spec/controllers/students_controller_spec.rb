require 'rails_helper'

describe StudentsController do
  let(:form_params_valid)  { { student: { first_name: 'Nat', email: 'nat@nat.nat' } } }
  let(:form_params_invalid) { { student: { first_name: 'Nat' } } }

  describe 'POST#register' do
    it 'renders true if valid params' do
      response = post(:register, form_params_valid)
      json = JSON.parse(response.body)
      expect(json).to eql({ 'result' => true })
    end

    it 'renders false if invalid params' do
      response = post(:register, form_params_invalid)
      json = JSON.parse(response.body)
      expect(json).to eql({ 'result' => false })
    end

    it 'sends an email' do
      expect { post(:register, form_params_valid) }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
