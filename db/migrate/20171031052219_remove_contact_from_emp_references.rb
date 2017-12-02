class RemoveContactFromEmpReferences < ActiveRecord::Migration
  def change
    remove_column :emp_references, :contact, :string
  end
end
