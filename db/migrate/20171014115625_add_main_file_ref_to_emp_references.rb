class AddMainFileRefToEmpReferences < ActiveRecord::Migration
  def change
    add_reference :emp_references, :main_file, index: true, foreign_key: true
  end
end
