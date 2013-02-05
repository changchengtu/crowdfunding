class StartaprojectController < ApplicationController
  before_filter :authenticate_user!

  def index
    @userpresub = Presub.where(:confirm=>nil, :user_id=>current_user.id).all

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
