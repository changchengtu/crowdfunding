class ManagerController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @allpresub = Presub.where(:confirm=>nil).all
    @allpro = Pro.all
  end

  def new
  end

  def edit     
    @presub = Presub.find(params[:id])
  end

  def update
    @confirm = Presub.find(params[:id])
    @confirm.update_attributes!(params[:confirm])
   
    if @confirm.confirm
      Pro.create(:Pname=>@confirm.Pname, :Pclassify=>@confirm.Pclassify, :Pgoal=>@confirm.Pgoal, :user_id=>@confirm.user_id, :Pon=>false)
    end
    redirect_to manager_index_path
  end

  def editpro
    @confirm = Pro.find(params[:id])    
  end

  def updatepro
    @delete = Pro.find(params[:id])
    @delete.destroy
    redirect_to manager_index_path
  end
end
