class Project < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :scenes
end
