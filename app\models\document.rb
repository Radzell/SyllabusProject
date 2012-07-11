class Document < ActiveRecord::Base
  attr_accessible :description, :name
  has_attached_file :upload,
      :path => ":rails_root/uploads/:class/:id/:basename.:extension",
      :url => "/documents/:id/download"
end
