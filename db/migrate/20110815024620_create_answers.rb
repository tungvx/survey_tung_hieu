class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.text :content
      t.string :type
      t.integer :question_tung_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
