class Instructor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    tests = BoatingTest.all.select do |test|
      test.name == test_name
    end

    student = Student.find_student(student_name)

    tests.each do |test|
      if test.student == student
        test.status = "pass"
      end
    end
  end

  def self.fail_student(student_name, test_name)
    tests = BoatingTest.all.select do |test|
      test.name == test_name
    end

    student = Student.find_student(student_name)

    tests.each do |test|
      if test.student == student
        test.status = "fail"
      end
    end
  end

  def self.student_grade_percentage(student_name)
    student = Student.find_student(student_name)

    tests = BoatingTest.all.select do |test|
      test.student == student
    end

    pass_count = 0

    tests.each do |test|
      if test.status == "pass"
        pass_count += 1
      end
    end

    "#{(pass_count.to_f / tests.length * 100).round}%"

  end

end
