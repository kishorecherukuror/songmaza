class AddAttachmentLinkToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :link
    end
  end

  def self.down
    drop_attached_file :songs, :link
  end
end
