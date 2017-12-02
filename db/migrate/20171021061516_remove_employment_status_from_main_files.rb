class RemoveEmploymentStatusFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :employment_status, :string
  end
end
