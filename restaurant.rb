class Restaurant
  attr_reader :cuisine

  def initialize(name, cuisine, duration, tables)
    @name = name
    @cuisine = cuisine
    @duration = duration
    @tables = tables
  end

  def search(party_size, window, reserve_date_time)
    window_message = window ? " with window" : ""
    puts "Search #{@name} for #{@party_size}#{window_message} at 
    #{reserve_date_time}"

    matching_tables = @tables.select do |table|
      (table.window == window && table.capacity == party_size) &&
      (table.available?(reserve_date_time, reserve_date_time + @duration*3600))
    end

    puts "  Found #{matching_tables.join(', ')}"
    matching_tables
  end

  def to_s
    "#{@name} (#{@cuisine}) (#{@duration} hours) - Tables: #{@tables.join(', ')}"
  end
end