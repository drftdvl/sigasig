class EmpReference < ActiveRecord::Base
	belongs_to :main_file
	validates :last_name, :first_name, :contact_details, :occupation, :presence => true
end
