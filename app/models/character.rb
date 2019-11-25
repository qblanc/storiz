class Character < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :scenes, through: :charascenes
  validates_with RecordNotEmptyValidator
end
