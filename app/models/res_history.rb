class ResHistory < ActiveRecord::Base
	belongs_to :main_file
	validates :start_date, :end_date, :street, :presence => true
	validates_numericality_of :house_number, :greater_than_or_equal_to => 0, :only_integer => true
end
