class Student
  attr_accessor :name

  def initialize(name, grade)
    @student = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new('Joe', '95')
bob = Student.new('Bob', '67')

puts "Well Done!" if joe.better_grade_than?(bob)
