class CreateCategoryArticles < ActiveRecord::Migration
  def change
    create_table :category_articles do |t|
      t.references :category, index: true
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :category_articles, :categories
    add_foreign_key :category_articles, :articles
  end
end
