require "employee"

class Startup
  attr_reader :name, :funding, :employees, :salaries
  def initialize(name, funding, salaries)
    @name = name 
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    if @salaries.has_key?(title)  
      return true
    else 
      return false
    end
  end

  def >(other_startup)
    self.funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name,title)
    else
      raise "There is an error adding new employee"
    end
  end

  def size 
    @employees.length
  end

  def pay_employee(employee)
    money_owed = @salaries[employee.title]
    if @funding >= money_owed
      employee.pay(money_owed)
      @funding -= money_owed
    else 
      raise "Not enough funding"
    end
  end

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end
  end
end
