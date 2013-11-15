class AddPageToFileContainer < ActiveRecord::Migration
  def change
    add_column :file_containers, :page, :string
  end
end
