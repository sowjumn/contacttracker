class StaffMembersController < ApplicationController
  def new
    @staff_member = StaffMember.new
  end

  def create
    manager = Manager.find(params[:manager_id])
    staff_member = manager.staff_members.build
    if staff_member.save
      render 'manager#show'
    else
      render new
    end
  end

  def show
    @staff_member = StaffMember.find(params[:id])
    @manager = @staff_member.manager
  end

  def index
    @all_staff = StaffMember.all
  end

  def edit
    @staff_member = StaffMember.find(params[:id])
  end

  def update
    @staff_member = StaffMember.find(params[:id])
    @staff_member.update_attributes(staff_params)
    render 'show'
  end

  def destroy
  end

  private

    def staff_params 
      params.require(:staff_member).permit(:name, :email, :phone)
    end
end
