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
    @confirm = Presub.find(params[:id])
    @confirm.update_attributes!(params[:confirm])
    redirect_to manager_index_path
  end
end
