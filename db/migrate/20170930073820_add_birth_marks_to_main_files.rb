class AddBirthMarksToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :birth_marks, :string
  end
end
