class AddBirthDateToFamilyMs < ActiveRecord::Migration
  def change
    add_column :family_ms, :birth_date, :date
  end
end
