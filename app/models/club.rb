class Club < ActiveRecord::Base
	belongs_to :main_file
	validates :club_name, :start_date, :end_date, :presence => true
end
