class Pro < ActiveRecord::Base
  attr_accessible :Pname, :Pclassify, :Pgoal, :Pintro, :Psummary, :Pfeedback, :user_id, :Pon

  belongs_to :user
  belongs_to :presub
end
