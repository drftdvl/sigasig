class RemoveHeightFeetFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :height_feet, :string
  end
end
