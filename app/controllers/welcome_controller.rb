class WelcomeController < ApplicationController
  def index
  end

  def manager
    @manager = Manager.where(email: params[:manager][:email]).first
    puts "I am the params #{params.inspect} &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    redirect_to "/managers/#{@manager.id}"
  end

  def staff
    @staff = StaffMember.where(email: params[:staff][:email])
    render "staffmembers/show"
  end
end