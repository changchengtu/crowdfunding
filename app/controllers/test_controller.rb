class TestController < ApplicationController

  def index
  end

  def now
    render :text=>"server response: the time is"+DateTime.now.to_s
  end  
end
