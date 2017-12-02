class AddHeightFtToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :height_ft, :integer
  end
end
