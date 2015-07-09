class AddSubCategoryIdToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :sub_category_id, :integer
  end
end
