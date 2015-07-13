class Category < ActiveRecord::Base
  has_many :articles
  has_many :questions
  has_many :ressources, through: :category_ressources
  has_many :category_ressources
end
