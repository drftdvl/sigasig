class AddAttachmentPictureToMainFiles < ActiveRecord::Migration
  def self.up
    change_table :main_files do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :main_files, :picture
  end
end
