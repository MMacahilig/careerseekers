require 'rails_helper'

describe StudentsController do
  describe 'POST#register' do
    it 'do like it do' do
      response = post(:register, { student: [] })
      expect(response).to eql(true)
    end
  end
end
