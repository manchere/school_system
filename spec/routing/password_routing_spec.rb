require 'rails_helper'

RSpec.describe 'PasswordController', type: :routing do
  describe 'routing' do
    it 'routes to #reset' do
      expect(get: "/password/reset").to route_to("password#reset")
    end
    it 'routes to #forgot' do
      expect(get: "/password/forgot").to route_to("password#forgot")
    end
  end
end
