class Character < ApplicationRecord
  belongs_to :project
  has_many :charascenes
end
