class AddSubCategoryToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :SubCategory, :string
  end
end
