class CreateEmpHistories < ActiveRecord::Migration
  def change
    create_table :emp_histories do |t|
      t.string :employer_name
      t.string :company_address1
      t.string :company_address2
      t.date :start_date
      t.string :end_date
      t.string :job_title
      t.text :reason

      t.timestamps null: false
    end
  end
end
