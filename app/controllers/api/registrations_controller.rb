class Api::RegistrationsController  <  DeviseTokenAuth::RegistrationsController
 skip_before_action :verify_authenticity_token
end