class ProjectController < ApplicationController
  def index
    @allproject = Pro.where(:manageron=>true)
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
    @allproject = Pro.where(:manageron=>true)
    if page == '1'
      @allproject = Pro.where(:classify=>"1",:manageron=>true)
    elsif page == '2' 
      @allproject = Pro.where(:classify=>"2",:manageron=>true)
    elsif page == '3'
      @allproject = Pro.where(:classify=>"3",:manageron=>true)
    elsif page == '4'
      @allproject = Pro.where(:classify=>"4",:manageron=>true)
    elsif page == '5'
      @allproject = Pro.where(:classify=>"5",:manageron=>true)
    elsif page == '6'
      @allproject = Pro.where(:classify=>"6",:manageron=>true)
    elsif page == '7'
      @allproject = Pro.where(:classify=>"7",:manageron=>true)
    elsif page == '8'
      @allproject = Pro.where(:classify=>"8",:manageron=>true)
    elsif page == '9'
      @allproject = Pro.where("pros.manageron='t' and pros.days>0")
    elsif page == '10'
      @allproject = Pro.where("pros.manageron='t' and pros.got>=pros.goal")
    elsif page == '11'
      @allproject = Pro.where("pros.days=0 and pros.goal>pros.got")
    end
  end
end
