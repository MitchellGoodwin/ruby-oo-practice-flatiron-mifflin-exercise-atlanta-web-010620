require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
dan = Manager.new("Dan", 47, "Accounting")
kyle = Manager.new("Kyle", 38, "Sales")
dan.hire_employee("Roger", 36000)
sarah = dan.hire_employee("Sarah", 45000)
kyle.hire_employee("Charlie", 45600)
kyle.hire_employee("Edd", 44500)


binding.pry
puts "done"
