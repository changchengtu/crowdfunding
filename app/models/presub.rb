class Presub < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :name, :classify, :goal, :intro, :summary, :feedback, :user_id, :confirm
  validates_presence_of :name, :classify, :goal, :intro, :summary, :feedback
  belongs_to :user
  has_one :pro
end
