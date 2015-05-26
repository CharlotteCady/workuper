class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :users
  end
end
