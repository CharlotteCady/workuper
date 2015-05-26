class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.string :title
      t.string :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :ressources, :users
  end
end
