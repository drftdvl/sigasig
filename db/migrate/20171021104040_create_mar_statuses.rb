class CreateMarStatuses < ActiveRecord::Migration
  def change
    create_table :mar_statuses do |t|
      t.string :code
      t.string :desc

      t.timestamps null: false
    end
  end
end
