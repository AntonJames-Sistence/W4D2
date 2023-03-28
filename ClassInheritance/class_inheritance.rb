class Employee
    attr_reader :salary, :boss

    def Initialize(name, title, salary, boss)
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
    def Initialize
        super
        assigned_employees = []
    end

    def bonus(multiplier)
        emp_total_salary = 0
        assigned_employees.each { |emp| emp_total_salary += emp.salary }
        emp_total_salary * multiplier
    end
end


ned = Employee.new("Ned", "Founder", 1000000, nil)
darren = Employee.new("Darren", "TA Manager", 78000, ned) # create logic for  adding subordinates
shawna = Employee.new("Shawna", "TA", 1000000, darren)
david = Employee.new("David", "TA", 1000000, darren)

ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000

# bonus = (total salary of all sub-employees) * multiplier