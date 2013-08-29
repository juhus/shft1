class Project < ActiveRecord::Base
  attr_accessible :description, :link, :thumbnail, :title
  has_many :posts, dependent: :destroy
end
