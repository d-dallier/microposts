class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile
      t.string :publish_email
      t.string :place
      t.string :gender

      t.timestamps null: false
      
      t.index :email, unique: trues
    end
  end
end
