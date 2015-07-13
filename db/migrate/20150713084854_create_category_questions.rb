class CreateCategoryQuestions < ActiveRecord::Migration
  def change
    create_table :category_questions do |t|
      t.references :category, index: true
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :category_questions, :categories
    add_foreign_key :category_questions, :questions
  end
end
