class AddMainFileRefToSpouses < ActiveRecord::Migration
  def change
    add_reference :spouses, :main_file, index: true, foreign_key: true
  end
end
