class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user, index: true
      t.references :article, index: true
      t.references :question, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :users
    add_foreign_key :favorites, :articles
    add_foreign_key :favorites, :questions
    add_foreign_key :favorites, :ressources
  end
end
