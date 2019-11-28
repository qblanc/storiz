class CharacterEvent < ApplicationRecord
  belongs_to :character
  belongs_to :scene

  validates :content, presence: true
end
