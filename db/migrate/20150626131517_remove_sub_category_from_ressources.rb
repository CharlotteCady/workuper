class RemoveSubCategoryFromRessources < ActiveRecord::Migration
  def change
    remove_column :ressources, :SubCategory, :string
  end
end
