class PostTag < ApplicationRecord
  has_many :tags
  belongs_to :post
end
