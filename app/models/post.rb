class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates_formatting_of :image, using: :url
  validates_formatting_of :music, using: :url
end
