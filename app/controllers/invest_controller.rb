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
    Usernotice.sendmail(@thisp.user.email,'您獲得資助金','您獲得來自'＋User.find(params[:invest][:user_id]).email+'資助'＋params[:invest][:howmuch])
    redirect_to root_path
  end
end
