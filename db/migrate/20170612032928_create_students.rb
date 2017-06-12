class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :major
      t.string :photo_link
      t.string :email
      t.string :password_digest
      t.timestamp
    end
  end
end
