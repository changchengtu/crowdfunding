class ProjectController < ApplicationController

  def index
    @allproject = Pro.where(:Pon=>true)
  end

  def new
  end

  def create
  end
end
