require './reservation'

class Table
  attr_reader :window, :capacity

  def initialize(capacity, window)
    @capacity = capacity
    @window = window
    @reservations = []
  end

  def available?(start_date_time, end_date_time)
    @reservations.reduce(true) { |a, r| a && !r.overlaps?(start_date_time, end_date_time) }
  end

  def make_reservation(party_name, start_date_time, end_date_time)
    @reservations << Reservation.new(party_name, start_date_time, end_date_time)
    puts "Your table has been reserved!"
  end

  def to_s
    window_message = @window ? "W" : ""
    "#{@capacity}#{window_message}"
  end
end