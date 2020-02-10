# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController
<<<<<<< HEAD
  before_action :configure_sign_in_params, only: [:create]
=======
  # before_action :configure_sign_in_params, only: [:create]
>>>>>>> yasuhara

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
<<<<<<< HEAD
  def after_sign_out_path_for(resource)
    new_admin_session_path
  end

  def after_sign_in_path_for(resource)
    admin=current_admin
    admins_top_path
  end

  protected
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
=======
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
>>>>>>> yasuhara
end
