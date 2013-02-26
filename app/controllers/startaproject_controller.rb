class StartaprojectController < ApplicationController
  before_filter :authenticate_user!
 
  def index
    @userpresubunconfirm = Presub.where(:confirm=>nil, :user_id=>current_user.id).all    #........
    @usercanonproject = Pro.where(:PuserOn=>false, :user_id=>current_user.id).all            #........
    @userprono = Pro.where(:PmanagerOn=>true, :user_id=>current_user.id).all         #........

  end

  def new
    
  end

  def create                         #創造一個前置專案
    @start = Presub.new(params[:start])
    if @start.save
      redirect_to startaproject_index_path
    else
      render :template=>'startaproject/new.html.erb' 
    end
  end

  def authorizep                    #顯示可上架的專案
    @pro = Pro.find(params[:id])
  end

  def updatep                       #更新上架專案
    @pro = Pro.find(params[:id])
    @pro.update_attributes!(params[:content])
    redirect_to startaproject_index_path
  end

  def edit
  end

  def update
  end
end
