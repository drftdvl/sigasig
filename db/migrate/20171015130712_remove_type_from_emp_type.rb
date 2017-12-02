class RemoveTypeFromEmpType < ActiveRecord::Migration
  def change
    remove_column :emp_types, :type, :string
  end
end
