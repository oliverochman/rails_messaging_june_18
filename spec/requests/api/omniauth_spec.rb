require 'rails_helper'
RSpec.describe 'User Registration', type: :request do

let(:headers) { { HTTP_ACCEPT: 'application/json' } }
  describe 'OmniAuth' do
    before do
        OmniAuth.config.test_mode = true
        OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(OmniAuthFixtures.facebook_response)
    end
    context 'Facebook' do
      let(:params) { {omniauth_window_type: 'newWindow'} }
      let(:request) { lambda do
        get('/api/auth/facebook/',
            params: params,
            headers: headers)
        follow_redirect! until response.status == 200
      end }

      let(:bad_request) { lambda do
        get('/api/auth/facebook/',
            params: params,
            headers: headers)
          #follow_redirect! until response.status == 200
      end }

      it 'allows user to register with valid authorization' do
          # Uses default mock, set in support/oauth.rb
          expect { request.call }.to change(User, :count).by(1)
      end

      it 'fails to register user with invalid authorization' do
          OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
          expect { bad_request.call }.to change(User, :count).by(0)
      end
    end
  end
end