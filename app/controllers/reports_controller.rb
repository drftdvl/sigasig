class ReportsController < ApplicationController
  def index
  	@guard = MainFile.where(emp_type_id: 2).where.not(emp_status_id: 4).order(:family_name)
  	# @admin = MainFile.where(emp_type_id: 1).where.not(emp_status_id: 4).order(:family_name)
  	respond_to do |format|
    	format.html
    	format.xlsx {
    	response.headers['Content-Disposition'] = 'attachment; filename="sigasig_hired_employees.xlsx"'
  		}
    end
  end
end
