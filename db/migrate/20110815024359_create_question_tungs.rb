class CreateQuestionTungs < ActiveRecord::Migration
  def self.up
    create_table :question_tungs do |t|
      t.text :content
      t.string :type
      t.integer :survey_tung_id

      t.timestamps
    end
  end

  def self.down
    drop_table :question_tungs
  end
end
