class Scene < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :characters, through: :charascenes

  validates :number, presence: true
end
