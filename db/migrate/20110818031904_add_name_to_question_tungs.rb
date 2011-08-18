class AddNameToQuestionTungs < ActiveRecord::Migration
  def self.up
    add_column :question_tungs, :name, :string
  end

  def self.down
    remove_column :question_tungs, :name
  end
end
