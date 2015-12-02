class Meetup < ActiveRecord::Base
  has_many :events
  has_and_belongs_to_many :players

  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
