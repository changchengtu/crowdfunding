class StartaprojectController < ApplicationController
  before_filter :authenticate_user!

  def index
    @userpresubunconfirm = Presub.where(:confirm=>nil, :user_id=>current_user.id).all    #顯示位審核的專案
    @usercanonproject = Pro.where(:Pon=>false, :user_id=>current_user.id).all            #顯示上架中的專案
    @userpresubno = Presub.where(:confirm=>false, :user_id=>current_user.id).all         #顯示被否定的專案

  end

  def new
    
  end

  def create
    start = Presub.new(params[:start])
   
    if start.save
      redirect_to startaproject_index_path
    else
      redirect_to root_path
    end
  end

  def authorizep
    @pro = Pro.find(params[:id])
  end

  def edit
  end

  def update
  end
end
