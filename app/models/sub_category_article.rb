class SubCategoryArticle < ActiveRecord::Base
  belongs_to :sub_category
  belongs_to :article
end
