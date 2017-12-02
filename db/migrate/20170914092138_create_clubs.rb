class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.string :position
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
