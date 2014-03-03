class WelcomeController < ApplicationController
  def index
  end

  def manager
    @manager = Manager.where(email: params[:manager][:email]).first
    redirect_to "/managers/#{@manager.id}"
  end

  def staff
    @staff_member = StaffMember.where(email: params[:staff][:email]).first
    redirect_to "/staff_members/#{@staff_member.id}"
  end
end