class Scene < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :characters, through: :charascenes
  has_many :character_events
  has_rich_text :content

  validates :number, presence: true
end
