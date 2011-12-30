class CreateHierarchies < ActiveRecord::Migration
  def change
    create_table :hierarchies do |t|
      t.string :name

      t.timestamps
    end
  end
end
