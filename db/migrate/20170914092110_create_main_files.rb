class CreateMainFiles < ActiveRecord::Migration
  def change
    create_table :main_files do |t|
      t.binary :picture
      t.string :employee_type
      t.string :employment_status
      t.string :job_position
      t.string :sss_number
      t.string :tin_number
      t.string :philhealth
      t.string :family_name
      t.string :given_name
      t.string :middle_name
      t.date :application_date
      t.date :hire_date
      t.date :regularization_date
      t.string :sex
      t.integer :age
      t.date :birth_date
      t.string :birth_place
      t.string :height
      t.float :weight
      t.string :blood_type
      t.string :citizenship
      t.string :hair_color
      t.string :religion
      t.string :civil_status
      t.text :job_skills
      t.string :hobbies
      t.string :city_address1
      t.string :city_address2
      t.string :prov_address1
      t.string :prov_address2
      t.string :emergency_name
      t.string :emergency_address
      t.string :emergency_relationship
      t.string :emergency_number
      t.string :language
      t.boolean :convicted
      t.boolean :pending_case
      t.boolean :assignment_willingness
      t.boolean :ojt
      t.string :endorser
      t.string :interviewing_officer

      t.timestamps null: false
    end
  end
end
