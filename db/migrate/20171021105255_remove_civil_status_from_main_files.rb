class RemoveCivilStatusFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :civil_status, :string
  end
end
