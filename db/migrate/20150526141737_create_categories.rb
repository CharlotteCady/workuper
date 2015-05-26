class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :article, index: true
      t.references :question, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :categories, :articles
    add_foreign_key :categories, :questions
    add_foreign_key :categories, :ressources
  end
end
