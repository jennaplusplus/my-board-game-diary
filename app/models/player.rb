class Player < ActiveRecord::Base
  has_and_belongs_to_many :meetups
  has_and_belongs_to_many :events
  has_and_belongs_to_many :games

  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :age, presence: true, numericality: { greater_than: 0 }

end
