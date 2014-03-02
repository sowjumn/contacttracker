class StaffMembersController < ApplicationController
  def new
    @staff_member = StaffMember.new
  end

  def create
    @staff_member = StaffMember.new(params[:staff])
    if @staff_member.save
      render @staff_member
    else
      render new
    end
  end

  def show
    @staff_member = StaffMember.find(params[:id])
  end

  def index
    @all_staff = StaffMember.all
  end

  def edit
    @staff_member = StaffMember.find(params[:id])
  end

  def update
    @staff_member = StaffMember.where(email: params[:manager][:email]).first
    @staff_member.update_attributes(params[:manager])
  end

  def destroy
  end
end
