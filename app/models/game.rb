class Game < ActiveRecord::Base
  has_many :events
  has_and_belongs_to_many :players

  validates :name, presence: true, uniqueness: true
  validates :genre, presence: true
  validates :time_to_play, presence: true, numericality: { greater_than: 0 }
  validates :min_players, presence: true, numericality: { greater_than: 0 }
  validates :max_players, presence: true, numericality: { greater_than: 0 }

  def avg_rating
    avg = []
    self.events.each do |event|
      if !event.rating.nil?
        avg << event.rating
      end
    end
    if avg.length > 0
      avg = avg.inject(0){|r, e| r + e}.to_f / avg.length.to_f
      return avg.round(2)
    else
      return nil
    end
  end

end
