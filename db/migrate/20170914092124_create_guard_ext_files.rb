class CreateGuardExtFiles < ActiveRecord::Migration
  def change
    create_table :guard_ext_files do |t|
      t.string :security_license_number
      t.date :expiry_date
      t.string :badge_number

      t.timestamps null: false
    end
  end
end
