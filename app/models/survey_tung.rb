class SurveyTung < ActiveRecord::Base
   belongs_to :user
   has_many :question_tungs
end
