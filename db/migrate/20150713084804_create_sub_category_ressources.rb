class CreateSubCategoryRessources < ActiveRecord::Migration
  def change
    create_table :sub_category_ressources do |t|
      t.references :sub_category, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_category_ressources, :sub_categories
    add_foreign_key :sub_category_ressources, :ressources
  end
end
