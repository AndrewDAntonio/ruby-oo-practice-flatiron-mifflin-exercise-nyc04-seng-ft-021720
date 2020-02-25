class Employee

    @@all = []
    attr_accessor :manager, :name, :salary

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_lower_limit)
        self.all.select{|employee| employee.salary > salary_lower_limit}
    end

    def self.find_by_department(string_department_name)
        first_employee = Employee.all.find{|employee| employee.manager.department == string_department_name}
        first_employee
    end

    def tax_bracket
        Employee.all.select do |employee|
            ((employee.salary <= (self.salary + 1000)) && (employee.salary >= (self.salary - 1000)))

        end
    end

end
