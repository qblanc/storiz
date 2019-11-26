class Project < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :scenes
  has_one :mood

  validates :title, presence: true, length: { minimum: 1 }
  validates :category, presence: true, inclusion: { in: %w(Book Movie "TV Show") } # !!! a implémenter les bitches
end
