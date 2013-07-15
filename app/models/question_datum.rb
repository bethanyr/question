class QuestionDatum < ActiveRecord::Base
  attr_accessible :answered, :asked_by, :date, :question_asked, :string
end
