class CreateSubCategoryArticles < ActiveRecord::Migration
  def change
    create_table :sub_category_articles do |t|
      t.references :sub_category, index: true
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_category_articles, :sub_categories
    add_foreign_key :sub_category_articles, :articles
  end
end
