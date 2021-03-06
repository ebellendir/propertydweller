class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
#This is for carrierwave to upload pictures


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :user_name, :uniqueness => true
  validates :password, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  has_many :tenancies
  has_many :properties, :through => :tenancies
end
