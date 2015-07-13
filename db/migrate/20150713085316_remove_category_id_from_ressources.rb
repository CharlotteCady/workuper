class RemoveCategoryIdFromRessources < ActiveRecord::Migration
  def change
    remove_column :ressources, :category_id, :integer
  end
end
