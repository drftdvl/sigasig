class AddMainFileRefToClubs < ActiveRecord::Migration
  def change
    add_reference :clubs, :main_file, index: true, foreign_key: true
  end
end
