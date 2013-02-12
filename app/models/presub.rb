class Presub < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :Pname, :Pclassify, :Pgoal, :Pintro, :Psummary, :Pfeedback, :user_id, :confirm
  validates_presence_of :Pname, :Pclassify, :Pgoal, :Pintro, :Psummary, :Pfeedback
  belongs_to :user
  has_one :pro
end
