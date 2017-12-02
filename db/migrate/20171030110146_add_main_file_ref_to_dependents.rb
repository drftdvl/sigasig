class AddMainFileRefToDependents < ActiveRecord::Migration
  def change
    add_reference :dependents, :main_file, index: true, foreign_key: true
  end
end
