class CreateAppraisalFieldTypes < ActiveRecord::Migration
  def change
    create_table :appraisal_field_types do |t|
      t.string :name
      t.integer :type
      t.string :html

      t.timestamps
    end
  end
end
