class Bootcamp
  def initialize(name,slogan,student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, k| hash[k] = []}
  end

  def name
    @name 
  end

  def slogan
    @slogan
  end

  def student_capacity
    @student_capacity 
  end

  def teachers
    @teachers 
  end

  def students
    @students 
  end

  def hire(teacher)
    @teachers<<teacher
  end

  def enroll(student)
    if student_capacity > students.length
      @students << student
      return true
    end
    false
  end

  def enrolled?(student)
    @students.include?(student)
  end
end
