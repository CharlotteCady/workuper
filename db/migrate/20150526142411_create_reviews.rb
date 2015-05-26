class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :article, index: true
      t.references :question, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :articles
    add_foreign_key :reviews, :questions
    add_foreign_key :reviews, :ressources
  end
end
