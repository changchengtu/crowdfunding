class ProjectController < ApplicationController
  def index
    @allproject = Pro.where(:PmanagerOn=>true)
  end

  def new
    
  end

  def show
	    @thisp = Pro.find(params[:id])
    @allinvest = Investment.where(:pro_id=>params[:id])
  end

  def create
  end

  def aboutus
  end

  def reflashindex
    page = params[:page]
    @allproject = Pro.where(:PmanagerOn=>true)
    if page == '1'
      @allproject = Pro.where(:Pclassify=>"1",:PmanagerOn=>true)
    elsif page == '2' 
      @allproject = Pro.where(:Pclassify=>"2",:PmanagerOn=>true)
    elsif page == '3'
      @allproject = Pro.where(:Pclassify=>"3",:PmanagerOn=>true)
    elsif page == '4'
      @allproject = Pro.where(:Pclassify=>"4",:PmanagerOn=>true)
    elsif page == '5'
      @allproject = Pro.where(:Pclassify=>"5",:PmanagerOn=>true)
    elsif page == '6'
      @allproject = Pro.where(:Pclassify=>"6",:PmanagerOn=>true)
    elsif page == '7'
      @allproject = Pro.where(:Pclassify=>"7",:PmanagerOn=>true)
    elsif page == '8'
      @allproject = Pro.where(:Pclassify=>"8",:PmanagerOn=>true)
    elsif page == '9'
      @allproject = Pro.where("pros.PmanagerOn='t' and pros.days>0")
    elsif page == '10'
      @allproject = Pro.where("pros.PmanagerOn='t' and pros.Pgot>=pros.Pgoal")
    elsif page == '11'
      @allproject = Pro.where("pros.days=0 and pros.Pgoal>pros.Pgot")
    end
  end
end
