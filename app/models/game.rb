class Game < ActiveRecord::Base
  has_many :events
  has_and_belongs_to_many :players

  def avg_rating
    avg = []
    self.events.each do |event|
      if !event.rating.nil?
        avg << event.rating
      end
    end
    if avg.length > 0
      return avg.inject(0){|r, e| r + e}
    else
      return nil
    end
  end

end
