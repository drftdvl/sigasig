class AddMobileNumberToMainFiles < ActiveRecord::Migration
  def change
    add_column :main_files, :mobile_number, :string
  end
end
