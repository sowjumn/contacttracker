class ManagersController < ApplicationController
  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(params[:manager])
    if @manager.save
      render @manager
    else
      render new
    end
  end

  def show
    @manager = Manager.find(params[:id])
  end

  def index
    @all_managers = Manager.all
  end

  def edit
    @manager = Manager.where(email: params[:manager][:email]).first
  end

  def update
    @manager = Manager.where(email: params[:manager][:email]).first
    @manager.update_attributes(params[:manager])
  end

  def destroy
  end
end