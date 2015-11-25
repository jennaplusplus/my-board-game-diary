class Event < ActiveRecord::Base
  belongs_to :meetup
  has_one :game
end
