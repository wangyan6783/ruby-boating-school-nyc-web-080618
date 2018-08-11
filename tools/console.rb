require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Student1")
student2 = Student.new("Student2")
student3 = Student.new("Student3")

instructor1 = Instructor.new("Instructor1")
instructor2 = Instructor.new("Instructor2")
instructor3 = Instructor.new("Instructor3")

test1 = BoatingTest.new(student1, "test1", "pending", instructor1)
test2 = BoatingTest.new(student2, "test2", "pending", instructor3)
test3 = BoatingTest.new(student3, "test3", "pending", instructor2)
test4 = BoatingTest.new(student3, "test2", "pending", instructor3)
test5 = BoatingTest.new(student2, "test1", "pending", instructor2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
