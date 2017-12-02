class AddMarStatusRefToMainFiles < ActiveRecord::Migration
  def change
    add_reference :main_files, :mar_status, index: true, foreign_key: true
  end
end
