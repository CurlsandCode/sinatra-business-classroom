class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :student_id
      t.integer :presentation_id
      t.timestamp
    end
  end
