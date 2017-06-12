class Comment < ActiveRecord::Base
  belongs_to :presentation
  belongs_to :student
end
