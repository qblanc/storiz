class Character < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :project
  has_many :charascenes
  has_many :scenes, through: :charascenes
  # validates_with RecordNotEmptyValidator
end
