class RemoveTypeFromAppraisalFieldType < ActiveRecord::Migration
  def change
    remove_column :appraisal_field_types, :type, :integer
  end
end
