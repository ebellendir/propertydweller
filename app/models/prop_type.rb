class PropType < ActiveRecord::Base

    validates :layout_type, :presence => true

    has_many    :properties
end
