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

  def aboutus
  end

  def reflashindex
    page = params[:page]
    @allproject = Pro.all
    if page == '1'
      @allproject = Pro.where(:Pclassify=>"1")
    elsif page == '2' 
      @allproject = Pro.where(:Pclassify=>"2")
    elsif page == '3'
      @alllproject = Pro.where(:Pclassify=>"3")
    elsif page == '4'
      @allproject = Pro.where(:Pclassify=>"4")
    elsif page == '5'
      @allproject = Pro.where(:Pclassify=>"5")
    elsif page == '6'
      @allproject = Pro.where(:Pclassify=>"6")
    elsif page == '7'
      @allproject = Pro.where(:Pclassify=>"7")
    elsif page == '8'
      @allproject = Pro.where(:Pclassify=>"8")
    end
  end
end
