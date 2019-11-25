class Project < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :scenes

  validates :title, presence: true, length: { minimum: 1 }
  validates :category, presence: true, inclusion: { in: %w(Fantastic Thriller Comedy) } # !!! a implémenter les bitches
end
