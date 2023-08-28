class Movie < ApplicationRecord
  has_one_attached :image
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
