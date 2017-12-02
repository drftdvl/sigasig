class CreateEmpStatuses < ActiveRecord::Migration
  def change
    create_table :emp_statuses do |t|
      t.string :code
      t.string :desc

      t.timestamps null: false
    end
  end
end
