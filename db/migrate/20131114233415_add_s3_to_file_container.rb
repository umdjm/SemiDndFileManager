class AddS3ToFileContainer < ActiveRecord::Migration
  def self.up
    add_attachment :file_containers, :s3_file
  end

  def self.down
    remove_attachment :file_containers, :s3_file
  end
end
