class Student < ActiveRecord::Base
  has_many :presentations
  has_many :comments, through: :presentations

  def comments_published
    Comment.find_by(:id => self.id)
  end
end
