class RemoveEndDateFromEmpHistory < ActiveRecord::Migration
  def change
    remove_column :emp_histories, :end_date, :string
  end
end
