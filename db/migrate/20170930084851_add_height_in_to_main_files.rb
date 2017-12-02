class AddHeightInToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :height_in, :integer
  end
end
