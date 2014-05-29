class CreateChatsAndStudents < ActiveRecord::Migration
  def change
    create_table :chats_students, id: false do |t|
      t.belongs_to :chat
      t.belongs_to :student
    end
  end
end
