class RemoveAgeFromDependents < ActiveRecord::Migration
  def change
    remove_column :dependents, :age, :integer
  end
end
