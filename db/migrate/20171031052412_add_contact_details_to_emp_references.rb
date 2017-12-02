class AddContactDetailsToEmpReferences < ActiveRecord::Migration
  def change
    add_column :emp_references, :contact_details, :string
  end
end
