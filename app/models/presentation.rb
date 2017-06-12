class Presentation < ActiveRecord::Base
  validates_presence_of :youtube_link, presence: true
  belongs_to :student
  has_many :comments
end
