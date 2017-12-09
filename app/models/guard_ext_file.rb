class GuardExtFile < ActiveRecord::Base
	belongs_to :main_file, required: false
	validates :security_license_number, presence: true, length: 14..14
	validates :expiry_date, presence: true
	validates :badge_number, presence: true, length: 12..12
end