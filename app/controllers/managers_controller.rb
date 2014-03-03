class ManagersController < ApplicationController
  def show
    @manager = Manager.find(params[:id])
    @staff = @manager.staff_members
    @staff_member = StaffMember.new
  end
end