class AddMainFileRefToGuardExtFiles < ActiveRecord::Migration
  def change
    add_reference :guard_ext_files, :main_file, index: true, foreign_key: true
  end
end
