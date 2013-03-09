class Investment < ActiveRecord::Base
  attr_accessible :id,:towho, :howmuch, :confirm, :user_id, :pro_id

  belongs_to :user
  belongs_to :pro
end
