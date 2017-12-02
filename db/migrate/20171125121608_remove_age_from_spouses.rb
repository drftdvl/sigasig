class RemoveAgeFromSpouses < ActiveRecord::Migration
  def change
    remove_column :spouses, :age, :integer
  end
end
