require 'pry'
require_relative '../lib/restaurant.rb'
require_relative '../lib/location.rb'
require_relative '../lib/employee.rb'

r1 = Restaurant.new("Mickey D")
r2 = Restaurant.new("Subway")

e1 = Employee.new(r1,"Richard",500)
e2 = Employee.new(r1,"Emma",1200)

l1 = Location.new(r1,500,"11 Broadway Ave",e1)
l2 = Location.new(r2,1500,"55 Broadway Ave",e2)
l3 = Location.new(r1,500,"21 Hollywood Ave",e1)

#binding.pry
