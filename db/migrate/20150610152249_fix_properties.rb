class FixProperties < ActiveRecord::Migration
  def change
    rename_column   :Properties, :property_pic, :picture
end
end
