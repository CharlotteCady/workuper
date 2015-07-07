class SubCategory < ActiveRecord::Base
  belongs_to :article
  belongs_to :question
  belongs_to :ressource
end
