class GuardExtFile < ActiveRecord::Base
	belongs_to :main_file
	validates :security_license_number, presence: true, length: 14..14
	validates :expiry_date, presence: true
	validates :badge_number, presence: true, length: 13..13
end