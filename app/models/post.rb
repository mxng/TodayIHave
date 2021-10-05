class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_and_belongs_to_many :tags, through: :post_tags

  validates :content, presence: true
end
