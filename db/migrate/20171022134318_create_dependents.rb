class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :city_address1
      t.string :city_address2
      t.string :prov_address1
      t.string :prov_address2
      t.integer :age
      t.string :relationship

      t.timestamps null: false
    end
  end
end
