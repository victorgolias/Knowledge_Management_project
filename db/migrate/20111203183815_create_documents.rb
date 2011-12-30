class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.string :file_name

      t.timestamps
    end
  end
end
