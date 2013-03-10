class Message < ActiveRecord::Base
  attr_accessible :message, :user_name, :ques, :pro_id

  belongs_to :pro
end
