class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :question_tungs, :type, :question_type
  end

  def self.down
  end
end
