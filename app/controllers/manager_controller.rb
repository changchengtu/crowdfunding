require 'date'
class ManagerController < ApplicationController
  before_filter :authenticate_admin!

  t = Thread.new do                                #每隔一天減少以上架專案中的天數
    while(true) do
      sleep 3600
      all = Pro.where("days > 0 AND PmanagerOn = ?", true).all
      all.each do |data|
        leftdays = (Date.parse(Pro.start)-Date.parse(Time.now)).to_i
        data.update_attributes!(:days=>leftdays)
      end
    end
  end


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
      Pro.create(:Pname=>@confirm.Pname, :Pclassify=>@confirm.Pclassify, :Pgoal=>@confirm.Pgoal, :user_id=>@confirm.user_id, :PuserOn=>false, :PmanagerOn=>false, :days=>30)
    end
    redirect_to manager_index_path
  end

  def editpro
    @confirm = Pro.find(params[:id]) 
  end

  def updatepro
    @state = Pro.find(params[:id])
    @state.update_attributes!(:PmanagerOn=>true, :start=>Time.now)

    
    
    redirect_to manager_index_path
  end
end
