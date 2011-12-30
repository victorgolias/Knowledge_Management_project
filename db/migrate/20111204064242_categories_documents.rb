class DocsInCategory < ActiveRecord::Migration
  def change
    create_table :categories_documents, :id => false do |t|
      t.integer :document_id
      t.integer :category_id

      t.timestamps
    end
  end

end
