class Manager
    attr_accessor :name, :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.map{ |manager| manager.department}
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def self.average_age
        Manager.all.map{|manager| manager.age.to_f}.sum / Manager.all.length
    end
end
