require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael", 45, "Sales")
jan = Manager.new("Jan", 47, "Administration")
jim = Employee.new("Jim", 45000, michael)
dwight = Employee.new("Dwight", 46000, michael)
angela = Employee.new("Angela", 40000, jan)




binding.pry
puts "done"
