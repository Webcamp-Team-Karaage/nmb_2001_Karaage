# frozen_string_literal: true

class Members::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
   before_action :logout_status, only:[:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #  redirect_to root_path
  # end

  #def after_sign_in_path_for(resource)
   # redirect_to root_path
  #end

  # protected

  def logout_status
    @user = Member.find_by(email: params[:member][:email], status: "退会済")
    if @user
      flash[:withdraw] = '退会済みのアカウントです'
      redirect_to new_member_session_path
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
 #  end

end
