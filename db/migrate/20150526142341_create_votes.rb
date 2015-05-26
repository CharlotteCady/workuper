class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :article, index: true
      t.references :question, index: true
      t.references :ressource, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :users
    add_foreign_key :votes, :articles
    add_foreign_key :votes, :questions
    add_foreign_key :votes, :ressources
  end
end
