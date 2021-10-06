class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags

  validates :content, presence: true
end
