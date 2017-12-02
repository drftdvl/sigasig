class AddPagibigNumberToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :pagibig_number, :string
  end
end
