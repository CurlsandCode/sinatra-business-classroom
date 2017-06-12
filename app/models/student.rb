class Student < ActiveRecord::Base
  validates_presence_of :username, :first_name, :last_name, :email, :password, presence: true
  has_many :presentations
  has_many :comments, through: :presentations
  has_secure_password

  def comments_published
    Comment.find_by(:id => self.id)
  end
end
