class Character < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:first_name, :last_name],
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :project
  has_many :charascenes
  has_many :scenes, through: :charascenes
  has_one :mood
  has_many :character_events, dependent: :destroy
  validates_with RecordNotEmptyValidator
end
