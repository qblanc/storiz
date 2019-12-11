class Project < ApplicationRecord
  belongs_to :user
  has_many :characters, dependent: :destroy
  has_many :scenes, dependent: :destroy
  has_one :mood, dependent: :destroy

  validates :title, presence: true, length: { minimum: 1 }
  validates :category, presence: true, inclusion: { in: %w(Book Movie "TV Show") } # !!! a implémenter les bitches
end
