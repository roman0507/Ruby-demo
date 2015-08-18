class OpenTable
  def initialize(restaurants)
    @restaurants = restaurants
  end

  def search(cuisine, party_size, window, reserve_date_time)
    matching_restaurants = @restaurants.select do |restaurant|
      restaurant.cuisine == cuisine
    end
    
    tables = []
    matching_restaurants.each do |r|
      tables += r.search(party_size, window, reserve_date_time)
    end
    tables
  end

  def to_s
    @restaurants.join("\n")
  end
end
