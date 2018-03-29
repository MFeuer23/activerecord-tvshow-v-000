class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.order(:rating).last
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.order(:rating).first
  end
end
