
class Employee

    attr_reader :employee_name, :title, :salary, :boss
    

    def initialize(employee_name, salary, title, boss)
        @employee_name = employee_name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end

end


class Manager < Employee

    def initialize(employee_name, title, salary, boss)
        super
        @subordinates = []
    end

    def bonus(multiplier)
        total = 0
        @subordinates. each do |employee|
            total += (employee.salary) * multiplier 

        end

        total
    end

    def add_employee(employee)
        @subordinates.push(employee)
    end

end

