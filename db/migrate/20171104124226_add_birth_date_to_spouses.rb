class AddBirthDateToSpouses < ActiveRecord::Migration
  def change
    add_column :spouses, :birth_date, :date
  end
end
