class CreateAppraisalModels < ActiveRecord::Migration
  def change
    create_table :appraisal_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
