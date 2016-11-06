class Prescription < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor
	
	validates :prescription_details, presence: true
	validates :prescription_date, presence: true
end
