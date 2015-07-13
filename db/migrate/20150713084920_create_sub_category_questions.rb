class CreateSubCategoryQuestions < ActiveRecord::Migration
  def change
    create_table :sub_category_questions do |t|
      t.references :sub_category, index: true
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_category_questions, :sub_categories
    add_foreign_key :sub_category_questions, :questions
  end
end
