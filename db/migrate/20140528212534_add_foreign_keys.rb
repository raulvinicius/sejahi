class AddForeignKeys < ActiveRecord::Migration
  def change

  	add_column :chats, :talk_id, :integer
  	add_column :chats, :school_id, :integer

  	add_column :appraisals, :chat_id, :integer
  	add_column :appraisals, :appraisal_model_id, :integer
  	add_column :appraisals, :student_id, :integer

  	add_column :appraisal_fields, :appraisal_model_id, :integer
  	add_column :appraisal_fields, :appraisal_field_type_id, :integer

  end
end
