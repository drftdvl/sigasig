class AddEmpStatusRefToMainFiles < ActiveRecord::Migration
  def change
    add_reference :main_files, :emp_status, index: true, foreign_key: true
  end
end
