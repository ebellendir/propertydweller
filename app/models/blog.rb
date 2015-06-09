class Blog < ActiveRecord::Base

  validates :blog_title, :presence => true
  validates :blog_content, :presence => true

  belongs_to :property
end
