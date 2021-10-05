class Tag < ApplicationRecord
  has_many :updates, dependent: :destroy
  has_and_belongs_to_many :posts, through: :updates
end
