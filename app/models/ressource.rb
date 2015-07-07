class Ressource < ActiveRecord::Base
  belongs_to :user
  has_many :categories
  has_many :sub_categories
  has_many :votes
  has_many :reviews
  has_many :favorites

  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
  validates :sub_category, presence: true


  has_attached_file :picture
    # styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
