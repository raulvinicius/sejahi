class AppraisalFieldDatum < ActiveRecord::Base

	belongs_to :appraisalField, :dependent => :destroy
	belongs_to :appraisal, :dependent => :destroy

end
