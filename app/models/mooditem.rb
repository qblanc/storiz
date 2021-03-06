class Mooditem < ApplicationRecord
  belongs_to :mood
  has_one_attached :photo
  attribute :left, :integer, default: 0
  attribute :top, :integer, default: 0
  attribute :height, :integer
  attribute :width, :integer
  attribute :depth, :integer
end
