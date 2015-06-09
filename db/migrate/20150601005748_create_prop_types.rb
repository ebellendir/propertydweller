class CreatePropTypes < ActiveRecord::Migration
  def change
    create_table :prop_types do |t|
      t.string :layout_type

      t.timestamps

    end
  end
end
