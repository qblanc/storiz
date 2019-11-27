class Mood < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :character, optional: true
  belongs_to :scene, optional: true
  has_many :mooditems, dependent: :destroy
end
