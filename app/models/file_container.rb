class FileContainer < ActiveRecord::Base
  attr_accessible :description, :name, :s3_file, :page

  has_attached_file :s3_file, :path => "/files/:id/:extension", :url => ":s3_domain_url"
end
