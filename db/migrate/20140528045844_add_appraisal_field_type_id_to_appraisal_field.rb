class AddAppraisalFieldTypeIdToAppraisalField < ActiveRecord::Migration
  def change
    add_column :appraisal_fields, :appraisalFieldTypeId, :integer
  end
end
