class Scene < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :characters, through: :charascenes
  has_rich_text :content

  validates :number, presence: true
end
