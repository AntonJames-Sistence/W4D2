require 'byebug'
class Employee
    attr_reader :salary, :boss, :bonus

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    attr_reader :assigned_employees

    def initialize(name, title, salary, boss)
        super
        @assigned_employees = []
    end

    def assign_employee(employee_inst)
        @assigned_employees << employee_inst
    end

    def bonus(multiplier)
        emp_total_salary = 0
        assigned_employees.each { |emp| emp_total_salary += emp.salary }
        emp_total_salary * multiplier
    end
end


ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned) # create logic for  adding subordinates
ned.assign_employee(darren)

shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
darren.assign_employee(shawna)
darren.assign_employee(david)
# debugger

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

# bonus = (total salary of all sub-employees) * multiplier