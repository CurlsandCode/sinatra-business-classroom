class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :presentation_type
      t.string :youtube_link
      t.integer :student_id
      t.datetime :deadline
      t.timestamp
    end
  end
end
