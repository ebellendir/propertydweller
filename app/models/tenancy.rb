class Tenancy < ActiveRecord::Base

    validates :property, :presence => true, :uniqueness =>true
    validates :user, :presence => true

    belongs_to :user
    belongs_to :property
end
