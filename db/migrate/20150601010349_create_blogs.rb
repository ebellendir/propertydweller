class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :property_id
      t.string :blog_title
      t.string :blog_content

      t.timestamps

    end
  end
end
