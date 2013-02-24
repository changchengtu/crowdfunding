class Pro < ActiveRecord::Base
  attr_accessible :Pname, :Pclassify, :Pgoal, :Ppic, :Pdescribe, :Pintro, :Psummary, :Pfeedback, :user_id, :PuserOn, :PmanagerOn

  belongs_to :user
  belongs_to :presub
  has_many :investments
end
