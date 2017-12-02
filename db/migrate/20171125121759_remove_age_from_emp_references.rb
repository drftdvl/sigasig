class RemoveAgeFromEmpReferences < ActiveRecord::Migration
  def change
    remove_column :emp_references, :age, :integer
  end
end
