class ProjectController < ApplicationController
  def index
    @allproject = Pro.where(:PmanagerOn=>true)
  end

  def new
    
  end

  def show
	    @thisp = Pro.find(params[:id])
  end

  def create
  end
end
