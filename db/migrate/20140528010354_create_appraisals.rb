class CreateAppraisals < ActiveRecord::Migration
  def change
    create_table :appraisals do |t|

      t.timestamps
      
    end
  end
end
