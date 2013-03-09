class InvestController < ApplicationController
  before_filter :authenticate_user!
  def edit
    @thisp = Pro.find(params[:id])
  end
  def update
    Investment.create(params[:invest])
    @thisp = Pro.find(params[:id])
    sum = @thisp.Pgot.to_i + params[:invest][:howMuch].to_i
    @thisp.update_attributes(:Pgot=>sum)
    redirect_to root_path
  end
end
