class AddBirthDateToDependents < ActiveRecord::Migration
  def change
    add_column :dependents, :birth_date, :date
  end
end
