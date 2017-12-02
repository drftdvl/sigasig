class FamilyM < ActiveRecord::Base
	belongs_to :main_file
	validates :last_name, :first_name, :relationship, :occupation, :birth_date, :presence => true
end
