
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
    @allreadytoon = Pro.where(:manageron=>false,:useron=>true) #haven't done yet
    @allpro = Pro.where(:manageron=>true)
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
      Pro.create(:name=>params[:confirm][:name], :classify=>@confirm.classify, :goal=>@confirm.goal, :user_id=>@confirm.user_id, :useron=>false, :manageron=>false)
      Usernotice.sendemail(User.find(@confirm.user_id).email,'project information','your project:'+@confirm.name+' has been confirmed').deliver
    end
    redirect_to manager_index_path
  end

  def editpro
    @confirm = Pro.find(params[:id]) 
  end

  def updatepro
    @state = Pro.find(params[:id])
    @state.update_attributes!(:manageron=>true, :start=>Time.now, :days=>@state.goaldays)

    
    
    redirect_to manager_index_path
  end

  def deletepro
    Pro.delete(params[:id])
    redirect_to root_path
  end
end
