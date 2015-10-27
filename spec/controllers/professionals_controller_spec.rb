require 'rails_helper'

describe ProfessionalsController, type: :controller do
  describe 'POST#register' do
    it 'do like it do' do
      response = post(:register, { professional: { } })
      json = JSON.parse(response.body)
      expect(json).not_to be_nil
    end
  end
end
