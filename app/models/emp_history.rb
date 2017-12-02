class EmpHistory < ActiveRecord::Base
	belongs_to :main_file
	validates :employer_name, :start_date, :end_date, :job_title, :reason, :presence => true
end
