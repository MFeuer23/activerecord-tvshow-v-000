class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
  end

  def most_popular_show
    show = Show.highest_rating
  end
end
