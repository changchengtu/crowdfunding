class ManagerController < ApplicationController

  def index
    @allpresub = Presub.where(:confirm=>nil).all
  end

  def new
  end

  def edit
     @presub = Presub.find(params[:id])
  end

  def update
  end
end
