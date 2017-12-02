class AddRetirementDateToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :retirement_date, :date
  end
end
