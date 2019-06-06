class MainFilesController < ApplicationController
  def index
    @mainfiles = MainFile.all
  end

  def show
    @mainfile = MainFile.find(params[:id])
  end

  def new
    @mainfile = MainFile.new
    #guardextfile = @mainfile.build_guard_ext_file
  end

  def create
    @mainfile = MainFile.new(mainfile_params)

    if @mainfile.save
      redirect_to main_files_path, :notice => "Employee successfully created!"
    else
      render "new"
    end
  end

  def edit
    @mainfile = MainFile.find(params[:id])
    #guardextfile = @mainfile.build_guard_ext_file
  end

  def update
    @mainfile = MainFile.find(params[:id])

    if @mainfile.update(mainfile_params)
      redirect_to main_files_path, :notice => "Employee successfully modified!"
    else
      render 'edit'
    end
  end

  def destroy
    @mainfile = MainFile.find(params[:id])
    @mainfile.destroy
 
    redirect_to main_files_path
  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  helper_method :age

  private
  def mainfile_params
    params.require(:main_file).permit(
      :id,
      :family_name, 
      :job_position, 
      :sss_number, 
      :tin_number,
      :pagibig_number, 
      :philhealth, 
      :family_name, 
      :given_name, 
      :middle_name, 
      :application_date, 
      :hire_date, 
      :regularization_date, 
      :retirement_date, 
      :sex, 
      :birth_date, 
      :birth_place, 
      :height_ft,
      :height_in, 
      :weight,
      :blood_type, 
      :citizenship, 
      :hair_color, 
      :religion, 
      :job_skills, 
      :hobbies, 
      :city_address1, 
      :city_address2, 
      :prov_address1, 
      :prov_address2, 
      :emergency_name, 
      :emergency_address, 
      :emergency_relationship, 
      :emergency_number, 
      :language, 
      :convicted, 
      :pending_case, 
      :assignment_willingness, 
      :ojt, 
      :endorser, 
      :interviewing_officer,
      :emp_type_id,
      :emp_status_id,
      :mar_status_id,
      :picture,
      :mobile_number,
      clubs_attributes: [ :id, :club_name, :position, :start_date, :end_date, :_destroy ],
      dependents_attributes: [:id, :last_name, :first_name, :middle_name, :city_address1, :city_address2, :prov_address1, :prov_address2, :relationship, :birth_date, :_destroy],
      educations_attributes: [:id, :institution_name, :address1, :address2, :year_start, :year_finished, :degree, :awards, :_destroy],
      emp_histories_attributes: [:id, :employer_name, :company_address1, :company_address2, :start_date, :end_date, :job_title, :reason, :_destroy],
      emp_references_attributes: [:id, :last_name, :first_name, :middle_name, :city_address1, :city_address2, :prov_address1, :prov_address2, :contact_details, :occupation, :_destroy],
      family_ms_attributes: [:id, :last_name, :first_name, :middle_name, :city_address1, :city_address2, :prov_address1, :prov_address2, :relationship, :occupation, :birth_date, :_destroy],
      guard_ext_file_attributes: [:id, :security_license_number, :expiry_date, :badge_number, :_destroy],
      res_histories_attributes: [:id, :start_date, :end_date, :house_number, :street, :dtc, :province, :_destroy],
      spouses_attributes: [:id, :last_name, :first_name, :middle_name, :city_address1, :city_address2, :prov_address1, :prov_address2, :birth_date, :_destroy])
  end 
end
