class Question < ActiveRecord::Base
  belongs_to :user
  has_many :categories
  has_many :votes
  has_many :reviews
  has_many :favorites

  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true

end
