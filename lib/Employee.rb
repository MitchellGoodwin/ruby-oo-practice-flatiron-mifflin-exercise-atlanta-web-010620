class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(goal)
        Employee.all.select{|employee| employee.salary > goal}
    end

    def self.find_by_department(department_name)
        Employee.all.find{|employee| employee.manager.department == department_name}
    end

    def tax_bracket
        Employee.all.select{|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
    end
end
