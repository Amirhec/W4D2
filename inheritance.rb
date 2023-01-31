
class Employee

    attr_reader :employee_name, :title, :salary, :boss

    def initialize(employee_name, title, salary, boss)
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
        super(employee_name, title, salary)
        @subordinates = []
    end

    def bonus(multiplier)
        @salary * multiplier
    end

end