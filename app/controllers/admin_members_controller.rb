class AdminMembersController < ApplicationController

	def index
		@members = Member.all
	end

	def edit
		@member = Member.find(params[:id])
		@member.save
		redirect_to admin_member_path(@member.id)
	end
end
