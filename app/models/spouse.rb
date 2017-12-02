class Spouse < ActiveRecord::Base
	belongs_to :main_file
	validates :last_name, :first_name, :birth_date, presence: true
end
