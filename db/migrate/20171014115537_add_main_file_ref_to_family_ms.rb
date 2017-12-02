class AddMainFileRefToFamilyMs < ActiveRecord::Migration
  def change
    add_reference :family_ms, :main_file, index: true, foreign_key: true
  end
end
