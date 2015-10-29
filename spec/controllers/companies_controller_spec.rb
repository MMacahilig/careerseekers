require 'rails_helper'

describe CompaniesController do
  let(:form_params_valid)  { { company: { name: "Mr. Lee's Greater Hong Kong", email: 'bat@bat.bat' } } }
  let(:form_params_invalid) { { company: { name: "Mr. Lee's Greater Hong Kong" } } }

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
