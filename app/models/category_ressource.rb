class CategoryRessource < ActiveRecord::Base
  belongs_to :category
  belongs_to :ressource
end
