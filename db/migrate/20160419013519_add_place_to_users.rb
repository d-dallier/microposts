class AddPlaceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :place, :text
  end
end
