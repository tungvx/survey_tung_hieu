class QuestionTung < ActiveRecord::Base
   belongs_to :survey_tung
   has_one :answer
end
