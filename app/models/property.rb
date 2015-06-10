class Property < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  validates :property_name, :presence => true, :uniqueness => true
  validates :access_code, :presence => true, :uniqueness => true
  validates :zip, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :street_number, :presence => true,
  :uniqueness => {:scope => [ :city, :state, :street_name ]}
  # ^Validating so the entire address is unique
  validates :street_name, :presence => true

  has_many :tenancies
  has_many :blogs
  has_many :users, :through => :tenancies
  belongs_to :prop_type
end
