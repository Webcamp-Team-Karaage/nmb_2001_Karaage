class Admin::MembersController < ApplicationController
before_action :authenticate_admin!

	def index
		@members = Member.all

	end

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])
		@member.update(member_params)
		redirect_to admin_member_path(@member.id)
	end

	private
	def member_params
  	params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :phone, :status)
	end
end
