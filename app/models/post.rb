class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags

  validates :content, presence: true
end
