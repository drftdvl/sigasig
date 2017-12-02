class RemoveEmployeeTypeFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :employee_type, :string
  end
end
