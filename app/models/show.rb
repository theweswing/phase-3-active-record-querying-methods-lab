class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = self.maximum(:rating)
    found_show = self.find_by(rating: highest_rating)
    found_show
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    lowest_rating = self.minimum(:rating)
    found_show = self.find_by(rating: lowest_rating)
    found_show
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where('rating > ?', 5)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end
end
