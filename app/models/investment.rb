class Investment < ActiveRecord::Base
  attr_accessible :id,:toWho, :howMuch, :confirm, :user_id, :pro_id

  belongs_to :user
  belongs_to :pro
end
