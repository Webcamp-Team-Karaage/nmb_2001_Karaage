class MembersController < ApplicationController
  def show
  	@member = Member.find(params[:id])
  end

  def edit
  	@member = Member.find(params[:id])
  end

  def update
  	@member = Member.find(params[:id])
  	@member.update(member_params)
  	redirect_to member_path(@member.id)
  end

  def delete_me
  	@member = Member.find(params[:id])
  end

  private
  def member_params
  	params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :phone)
  end

end
