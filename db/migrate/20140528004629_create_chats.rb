class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
