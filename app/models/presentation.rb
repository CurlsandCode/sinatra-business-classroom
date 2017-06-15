class Presentation < ActiveRecord::Base
  validates_presence_of :youtube_link, presence: true
  belongs_to :student
  has_many :comments

  def youtube_embedded_link
    link = self.youtube_link.split(/youtu.*\//)[1]
    'https://www.youtube.com/embed/' + link
  end
end
