class RemoveFormationToSubCategory < ActiveRecord::Migration
  def change
    remove_column :sub_categories, :formation, :string
  end
end
