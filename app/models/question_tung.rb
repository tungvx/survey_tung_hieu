class QuestionTung < ActiveRecord::Base
   belongs_to :survey_tung
   has_many :answers, :dependent => :destroy
   accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  validates_presence_of :content, :question_type
end
