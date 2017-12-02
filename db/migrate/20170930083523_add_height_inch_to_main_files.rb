class AddHeightInchToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :height_inch, :string
  end
end
