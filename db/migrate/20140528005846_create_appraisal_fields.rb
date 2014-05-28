class CreateAppraisalFields < ActiveRecord::Migration
  def change
    create_table :appraisal_fields do |t|

      t.string :name
      t.string :hint

      t.timestamps
    end
  end
end
