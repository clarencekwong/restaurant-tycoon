
class Location

  attr_accessor :location, :rent, :employee
  attr_reader :restaurant

  @@all = []

  def initialize(restaurant,rent,location,employee)
    @restaurant = restaurant
    @rent = rent
    @location = location
    @employee = employee
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_addresses
    self.all.map {|loc| loc.location}
  end
end

# + `Location.all`
#   + Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
# + `Location.all_addresses`
#   + Returns an array of the address of all `Location` instances.
