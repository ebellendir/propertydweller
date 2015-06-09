class CreateTenancies < ActiveRecord::Migration
  def change
    create_table :tenancies do |t|
      t.string :property_id
      t.string :user_id
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :street_number
      t.string :street_name

      t.timestamps

    end
  end
end
