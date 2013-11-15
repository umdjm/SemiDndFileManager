class CreateFileContainers < ActiveRecord::Migration
  def change
    create_table :file_containers do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
