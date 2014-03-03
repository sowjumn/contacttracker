class StaffMembersController < ApplicationController
  def new
    @staff_member = StaffMember.new
  end

  def create
    manager = Manager.find(params[:manager_id])
    staff_member = manager.staff_members.build
    if staff_member.save
      render 'managers#show'
    else
      render new
    end
  end

  def show
    @staff_member = StaffMember.find(params[:id])
    @manager = @staff_member.manager
  end

  def edit
    @staff_member = StaffMember.find(params[:id])
    @manager = @staff_member.manager
  end

  def update
    puts "I am in staff memebers controller &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    @staff_member = StaffMember.find(params[:id])
    @staff_member.update_attributes(staff_params)
    @manager = @staff_member.manager
    redirect_to @manager
  end

  def destroy

  end

  private

    def staff_params 
      params.permit(:name, :email, :phone)
    end
end
