class QuestionTung < ActiveRecord::Base
   belongs_to :survey_tung
   has_many :answers, :dependent => :destroy
   accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  validates_presence_of :content, :question_type
   validate :proper_answers_number
  private
   def proper_answers_number
     if question_type && question_type != "Text" && answers.size < 2
       errors.add("with #{question_type} type", ", there must be at least two answers")
     end
   end
end
