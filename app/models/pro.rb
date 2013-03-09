class Pro < ActiveRecord::Base
  attr_accessible :id,:name, :classify, :goal, :pic, :describe, :intro, :summary, :feedback, :user_id, :useron, :manageron, :days, :video, :got, :start, :goaldays

  belongs_to :user
  belongs_to :presub
  has_many :investments
end
