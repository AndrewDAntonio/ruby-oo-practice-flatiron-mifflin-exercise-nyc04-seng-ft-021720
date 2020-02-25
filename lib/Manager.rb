class Manager

    @@all = []
    attr_accessor :name, :department
    attr_reader :age

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        new_hire = Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map{|manager| manager.department}
    end

    def self.average_age
        self.all.inject(0.0){|sum, manager| sum + manager.age}/self.all.length
    end

end
