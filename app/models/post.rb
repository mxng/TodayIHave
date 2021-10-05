class Post < ApplicationRecord
  belongs_to :user
  has_many :updates, dependent: :destroy
  has_and_belongs_to_many :tags, through: :updates

  validates :content, presence: true
end
