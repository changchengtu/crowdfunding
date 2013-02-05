class StartaprojectController < ApplicationController
  before_filter :authenticate_user!

  def index
    @userpresubunconfirm = Presub.where(:confirm=>nil, :user_id=>current_user.id).all
    @userpresubyes = Presub.where(:confirm=>true, :user_id=>current_user.id).all
    @userpresubno = Presub.where(:confirm=>false, :user_id=>current_user.id).all

  end

  def new
    
  end

  def create
    start = Presub.new(params[:start])
   
    if start.save
      redirect_to manager_index_path
    else
      redirect_to root_path
    end
  end
end
