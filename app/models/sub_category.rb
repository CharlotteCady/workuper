class SubCategory < ActiveRecord::Base
  has_many :article
  has_many :question
  has_many :ressource
end
