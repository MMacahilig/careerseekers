require 'rails_helper'

describe StudentsController do
  describe 'POST#register' do
    it 'do like it do' do
      response = post(:register, { student: { } })
      json = JSON.parse(response.body)
      expect(json).not_to be_nil
    end
  end
end
