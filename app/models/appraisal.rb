class Appraisal < ActiveRecord::Base

  has_many :appraisalFieldDatas
  has_many :appraisalFields

  belongs_to :siol

end
