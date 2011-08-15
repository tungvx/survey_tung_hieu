class CreateSurveyTungs < ActiveRecord::Migration
  def self.up
    create_table :survey_tungs do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_tungs
  end
end
