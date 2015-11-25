class Event < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :game
  has_and_belongs_to_many :players
end
