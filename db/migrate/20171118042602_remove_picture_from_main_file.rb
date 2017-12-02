class RemovePictureFromMainFile < ActiveRecord::Migration
  def change
    remove_column :main_files, :picture, :binary
  end
end
