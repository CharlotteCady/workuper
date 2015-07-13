class SubCategoryQuestion < ActiveRecord::Base
  belongs_to :sub_category
  belongs_to :question
end
