class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 #before_action :authenticate_user!

# authenticated :user do
 # root to: "properties#index", as: :authenticated_root
#end

#unathenticated do
 # root to: "sessions#index", as: :unathenticated_root
#end

before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :user_name
  devise_parameter_sanitizer.for(:sign_up) << :first_name
  devise_parameter_sanitizer.for(:sign_up) << :last_name

  devise_parameter_sanitizer.for(:account_update) << :first_name
  devise_parameter_sanitizer.for(:account_update) << :last_name
  devise_parameter_sanitizer.for(:account_update) << :profile_pic
end

end
