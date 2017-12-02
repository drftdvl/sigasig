class AddEndDateToEmpHistory < ActiveRecord::Migration
  def change
    add_column :emp_histories, :end_date, :date
  end
end
