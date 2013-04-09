class InvestController < ApplicationController
  before_filter :authenticate_user!
  def edit
    @thisp = Pro.find(params[:id])
        @pro_id = params[:id].to_i
    @user_id = current_user.id
  end
  def update
    Investment.create(params[:invest])
    @thisp = Pro.find(params[:id])
    sum = @thisp.got.to_i + params[:invest][:howmuch].to_i
    @thisp.update_attributes(:got=>sum)


    Usernotice.sendemail(@thisp.user.email,'Someone want to invest your idea!', User.find(params[:invest][:user_id].to_i).email+' want to support your project:'+@thisp.name+'with'+params[:invest][:howmuch]+'NTD').deliver

    redirect_to root_path
  end
end
