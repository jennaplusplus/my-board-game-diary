class Event < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :game
  has_and_belongs_to_many :players

  validates :rating, presence: true, numericality: { :less_than_or_equal_to 10 }
end
