class AddAddressToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :address, :string
  end
end
