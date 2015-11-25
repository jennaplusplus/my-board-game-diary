class Player < ActiveRecord::Base
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_and_belongs_to_many :games
end
