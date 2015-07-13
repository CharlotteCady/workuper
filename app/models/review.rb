teclass Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  belongs_to :question
  belongs_to :ressource
end
