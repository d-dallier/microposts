class AddRtPostToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :RT_post, :integer
  end
end
