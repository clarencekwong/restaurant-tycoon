class Employee
  attr_accessor :name, :salary
  attr_reader :restaurant

  @@all = []

  def initialize(restaurant,name,salary)
    @restaurant = restaurant
    @name = name
    @salary = salary
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_pay
    Employee.all.inject(0) {|sum, employees| sum + employees.salary} / Employee.all.size
  end
end


## SUPER BONUS MODE ##

# Add a third class into the mix: an Employee.  Each location can have many employees, while each employee belongs to a location.
#
# ### Build out the following methods on the `Employee` class
#
# + `Employee.all`
#   + Returns an array of each `Employee` instance, irrespective of which `Restaurant` they work for
# + `Employee.average_pay`
#   + Returns the average pay of all employees, irrespective of which `Restaurant` they work for
