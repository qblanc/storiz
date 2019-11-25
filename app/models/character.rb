class Character < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :scenes, through: :charascenes

  validates :first_name, presence: true
  validates :description, presence: true
end
