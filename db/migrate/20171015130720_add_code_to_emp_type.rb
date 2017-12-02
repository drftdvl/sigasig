class AddCodeToEmpType < ActiveRecord::Migration
  def change
    add_column :emp_types, :code, :string
  end
end
