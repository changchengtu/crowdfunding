
class ManagerController < ApplicationController
  before_filter :authenticate_admin!
  t = Thread.new do                                #每隔一天減少以上架專案中的天數
    while(true) do
      sleep 60
      all = Pro.where("days > 0").all
      all.each do |data|
        data.update_attributes!(:days=>(data.goaldays-(Time.now.to_date-data.start.to_date).to_i))
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
      Pro.create(:Pname=>@confirm.Pname, :Pclassify=>@confirm.Pclassify, :Pgoal=>@confirm.Pgoal, :user_id=>@confirm.user_id, :PuserOn=>false, :PmanagerOn=>false, :goaldays=>40, :days=>40)
    end
    redirect_to manager_index_path
  end

  def editpro
    @confirm = Pro.find(params[:id]) 
  end

  def updatepro
    @state = Pro.find(params[:id])
    @state.update_attributes!(:PmanagerOn=>true, :start=>"2013-03-01 05:37:03.356863")

    
    
    redirect_to manager_index_path
  end
end
