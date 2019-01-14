
class Restaurant

  attr_accessor :name
  attr_reader :employee

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def locations
    Location.all.select {|eatery| eatery.restaurant == self}
  end

  def total_rent
    locations.inject(0) {|sum, store| sum + store.rent}
  end

  def create_location(location,rent,employee)
    Location.new(self,rent,location,employee)
  end

  def employees
    Employee.all.select {|employees| employees.restaurant == self}
  end

  def total_pay
    employees.inject(0) {|sum,worker| sum + worker.salary}
  end

  def total_expenses
    self.total_rent + self.total_pay
  end
end

### Build out the following methods on the `Restaurant` class

# + `Restaurant#employees`
#   + Returns an array of each `Employee` instance that works for this `Restaurant`
# + `Restaurant#total_pay`
#   + Returns the total amount this `Restaurant` pays out to all of its employees
# + `Restaurant#total_expenes
#   + Returns the total amount this `Restaurant` pays out to all of its employees AND in rent

# + `Restaurant.all`
#   + Returns all `Restaurant` instances
# + `Restaurant#locations`
#   + Returns an array of all `Locations`s of this particular `Restaurant` instance
# + `Restaurant#total_rent`
#   + Returns the total amount this `Restaurant` pays for all of its `Location`s
# + `Resturant#create_location`
#   + Creats a new `Location` instance for this particular `Restuarant`
