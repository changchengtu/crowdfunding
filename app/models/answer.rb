class Answer < ActiveRecord::Base
  attr_accessible :context, :name, :question_id

  belongs_to :question
end
