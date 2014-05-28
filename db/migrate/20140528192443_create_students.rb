class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :nick
      t.string :email
      t.date :birthday
      t.string :region

      t.timestamps
    end
  end
end
