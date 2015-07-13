class RemoveSubCategoryIdFromRessources < ActiveRecord::Migration
  def change
    remove_column :ressources, :sub_category_id, :integer
  end
end
