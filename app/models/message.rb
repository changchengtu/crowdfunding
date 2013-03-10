class Message < ActiveRecord::Base
  attr_accessible :message, :user_name, :ques, :pro_id, :user_id

  belongs_to :pro
  belongs_to :user
end
