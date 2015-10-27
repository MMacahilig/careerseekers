require 'rails_helper'

describe HomepageController, type: :controller do
  describe 'GET#index' do
    it 'routes to index' do
      expect(get: '/').to route_to(controller: 'homepage', action: 'index')
    end
  end
end
