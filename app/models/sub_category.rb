class SubCategory < ActiveRecord::Base
  has_many :article
  has_many :question
  has_many :ressource, through: :sub_category_ressources
  has_many :sub_category_ressources
end
