class Presub < ActiveRecord::Base
  attr_accessible :Pname, :Pclassify, :Pgoal, :Pintro, :Psummary, :Pfeedback, :user_id, :confirm

  belongs_to :user
end
