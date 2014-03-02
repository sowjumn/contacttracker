class WelcomeController < ApplicationController
  def index
  end

  def manager
    @manager = Manager.where(email: params[:manager_email])
  end

  def staff
  end
end