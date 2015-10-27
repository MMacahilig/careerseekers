require 'rails_helper'

describe CompaniesController, type: :controller do
  describe 'POST#register' do
    it 'do like it do' do
      response = post(:register, { company: { } })
      json = JSON.parse(response.body)
      expect(json).not_to be_nil
    end
  end
end
