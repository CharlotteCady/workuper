class AddCategoryIdToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :category_id, :integer
  end
end
