class Document < ActiveRecord::Base
  validates :name, :file_name, :category_id, :presence => true
  #validates_attachment_content_type :doc, :pdf
  #has_attached_file :uploader, :url => "/:file_name"

  has_many :categories, :through => :categories_documents
end
