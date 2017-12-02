class RemoveDetailsFromEmpReferences < ActiveRecord::Migration
  def change
    remove_column :emp_references, :details, :text
  end
end
