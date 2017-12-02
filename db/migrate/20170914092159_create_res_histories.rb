class CreateResHistories < ActiveRecord::Migration
  def change
    create_table :res_histories do |t|
      t.date :start_date
      t.date :end_date
      t.integer :house_number
      t.string :street
      t.string :dtc
      t.string :province

      t.timestamps null: false
    end
  end
end
