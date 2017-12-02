class CreateEmpTypes < ActiveRecord::Migration
  def change
    create_table :emp_types do |t|
      t.string :type
      t.string :desc

      t.timestamps null: false
    end
  end
end
