class AddEmpTypeRefToMainFiles < ActiveRecord::Migration
  def change
    add_reference :main_files, :emp_type, index: true, foreign_key: true
  end
end
