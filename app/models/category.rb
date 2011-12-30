class Category < ActiveRecord::Base
  validates :name, :presence => true

  has_many :documents, :through => :categories_documents
  acts_as_nested_set
end
