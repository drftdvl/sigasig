class RemoveHeightInchFromMainFiles < ActiveRecord::Migration
  def change
    remove_column :main_files, :height_inch, :string
  end
end
