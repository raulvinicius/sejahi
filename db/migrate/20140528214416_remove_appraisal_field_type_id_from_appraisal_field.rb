class RemoveAppraisalFieldTypeIdFromAppraisalField < ActiveRecord::Migration
  def change
    remove_column :appraisal_fields, :appraisalFieldTypeId, :string
  end
end
