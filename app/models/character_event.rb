class CharacterEvent < ApplicationRecord
  belongs_to :character
  belongs_to :scene
end
