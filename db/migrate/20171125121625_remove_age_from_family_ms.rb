class RemoveAgeFromFamilyMs < ActiveRecord::Migration
  def change
    remove_column :family_ms, :age, :integer
  end
end
