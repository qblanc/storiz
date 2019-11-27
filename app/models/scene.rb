class Scene < ApplicationRecord
  belongs_to :project
  has_many :charascenes
  has_many :characters, through: :charascenes
  has_many :character_events
  has_rich_text :content

  validates :number, presence: true
  after_initialize :set_defaults

  def set_defaults
    self.content = "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>" if self.new_record?
  end
end
