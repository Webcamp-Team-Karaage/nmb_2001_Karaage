class MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
    if @member != current_member
      redirect_to member_path(current_member)
    end
  end

  def edit
    @member = Member.find(params[:id])
    if @member != current_member
      redirect_to member_path(current_member)
    end
  end

  def update
  	@member = Member.find(params[:id])
  	@member.update(member_params)
    redirect_to member_path(@member.id)
    if @member != current_member
      redirect_to member_path(current_member)
    end
  end

  def delete_me
  	@member = Member.find(params[:id])
  end

  def withdraw
    @member = Member.find(params[:id])
    @member.status = 1
    @member.save
    #pry-byebug
    sign_out
    redirect_to root_path
  end

  private
  def member_params
  	params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :phone, :status)
  end

end
