class Education < ActiveRecord::Base
	belongs_to :main_file
	validates :institution_name, :year_start, :year_finished, :presence => true
end
