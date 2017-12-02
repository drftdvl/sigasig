class RemoveHeightFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :height, :string
  end
end
