class Student
  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(first_name)
    Student.all.find do |student|
      student.first_name == first_name
    end
  end
end
