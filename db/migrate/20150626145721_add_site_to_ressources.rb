class AddSiteToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :site, :string
  end
end
