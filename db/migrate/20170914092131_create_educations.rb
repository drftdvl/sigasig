class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :institution_name
      t.string :address1
      t.string :address2
      t.integer :year_start
      t.integer :year_finished
      t.string :degree
      t.text :awards

      t.timestamps null: false
    end
  end
end
