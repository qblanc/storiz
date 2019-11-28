class Scene < ApplicationRecord
  belongs_to :project
  has_many :charascenes, dependent: :destroy
  has_many :characters, through: :charascenes
  has_many :character_events, dependent: :destroy
  has_rich_text :content

  validates :number, presence: true
  after_initialize :set_defaults

  def set_defaults
    self.content = "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>" if self.new_record?
  end
end
