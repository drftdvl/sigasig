class AddMainFileRefToEducations < ActiveRecord::Migration
  def change
    add_reference :educations, :main_file, index: true, foreign_key: true
  end
end
