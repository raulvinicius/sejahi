class CreateSiols < ActiveRecord::Migration
  def change
    create_table :siols do |t|
      t.string :firstname
      t.string :lastname
      t.string :nick
      t.string :email
      t.datetime :birthday
      t.string :region
      
      t.timestamps
    end
  end

end
