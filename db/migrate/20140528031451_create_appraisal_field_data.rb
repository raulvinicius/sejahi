class CreateAppraisalFieldData < ActiveRecord::Migration
  def change
    create_table :appraisal_field_data do |t|
      t.string :data

      t.timestamps
    end
  end
end
