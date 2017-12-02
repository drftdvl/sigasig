class RemoveAgeFromMainFile < ActiveRecord::Migration
  def change
    remove_column :main_files, :age, :integer
  end
end
