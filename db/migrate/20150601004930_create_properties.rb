class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_pic
      t.string :property_name
      t.integer :zip
      t.string :city
      t.string :state
      t.string :street_name
      t.integer :street_number
      t.string :access_code
      t.string :prop_type_id

      t.timestamps

    end
  end
end
