class Post < ActiveRecord::Base
  attr_accessible :content, :project_id, :thumbnail, :title
  belongs_to :project
end
