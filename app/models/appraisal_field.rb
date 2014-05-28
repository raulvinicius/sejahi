class AppraisalField < ActiveRecord::Base

  belongs_to :appraisalModel
  belongs_to :appraisalFieldType

  has_many :appraisalFieldDatas
  
end
