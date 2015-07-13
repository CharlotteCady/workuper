class Category < ActiveRecord::Base
  has_many :articles
  has_many :questions
  has_many :ressources
end
