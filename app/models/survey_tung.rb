class SurveyTung < ActiveRecord::Base
   belongs_to :user
   has_many :question_tungs, :dependent => :destroy
   accepts_nested_attributes_for :question_tungs, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   validates_presence_of :title
end
