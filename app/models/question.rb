class Question < ActiveRecord::Base
  attr_accessible :id, :name, :show, :context, :user_id, :pro_id

  has_many :answers
  belongs_to :pro
  belongs_to :user
end
