class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.references :article, index: true
      t.references :question, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_categories, :articles
    add_foreign_key :sub_categories, :questions
    add_foreign_key :sub_categories, :ressources
  end
end
