class FixUsers < ActiveRecord::Migration
  def change
    rename_column   :Users, :name, :user_name
    #Need to change back to user_name (original naming convention due to errors)
end
end
