class Character < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :scenes, through: :charascenes
  has_one :mood

  validates_with RecordNotEmptyValidator
end
