class Comment < ActiveRecord::Base
  validates_presence_of :content, presence: true
  belongs_to :presentation
  belongs_to :student
end
