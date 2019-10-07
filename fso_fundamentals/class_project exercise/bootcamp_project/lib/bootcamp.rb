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

  def student_to_teacher_ratio
    return (students.length/teachers.length)
  end
  
  def add_grade(student, grade)
    if self.enrolled?(student)
      @grades[student]<<grade
      return true
    end
    false
  end

  def num_grades(student)
     @grades[student].length
  end

  def average_grade(student)
    sum = 0
    average = 0
    if self.enrolled?(student) && self.num_grades(student) > 0
      @grades[student].each do |el| 
        sum += el 
        average = sum/(@grades[student].length) 
      end
      return average
    end
    nil
  end
end

