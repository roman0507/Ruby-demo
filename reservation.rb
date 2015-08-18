class Reservation
  def initialize(party_name, start_date_time, end_date_time)
    @party_name = party_name
    @start_date_time = start_date_time
    @end_date_time = end_date_time
  end

  def overlaps?(start_date_time, end_date_time)
    # Easy way to solve this is to test for non-overlap and inverse the result.
    ! (end_date_time < @start_date_time || start_date_time > @end_date_time)
  end
end
