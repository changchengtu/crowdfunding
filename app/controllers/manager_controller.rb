class ManagerController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @allpresub = Presub.where(:confirm=>nil).all
    @allreadytoon = Pro.where(:PmanagerOn=>false,:PuserOn=>true) #haven't done yet
    @allpro = Pro.where(:PmanagerOn=>true)
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
      Pro.create(:Pname=>@confirm.Pname, :Pclassify=>@confirm.Pclassify, :Pgoal=>@confirm.Pgoal, :user_id=>@confirm.user_id, :PuserOn=>false, :PmanagerOn=>false)
    end
    redirect_to manager_index_path
  end

  def editpro
    @confirm = Pro.find(params[:id]) 
  end

  def updatepro
    @state = Pro.find(params[:id])
    @state.update_attributes!(:PmanagerOn=>true)
    
    
    redirect_to manager_index_path
  end
end
