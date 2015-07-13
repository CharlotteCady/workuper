class CreateCategoryRessources < ActiveRecord::Migration
  def change
    create_table :category_ressources do |t|
      t.references :category, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :category_ressources, :categories
    add_foreign_key :category_ressources, :ressources
  end
end
