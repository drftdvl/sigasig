class AddHeightFeetToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :height_feet, :string
  end
end
