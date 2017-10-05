require_relative('../models/student')
require_relative('../models/subject')
require_relative('../models/student_subject')

require( 'pry-byebug' )

Student.delete_all()
Subject.delete_all()

student1 = Student.new({ 'name' => 'Scott Murray'})
student1.save()
student2 = Student.new({ 'name' => 'Jordan Maclean'})
student2.save()
student3 = Student.new({ 'name' => 'Elon Musk'})
student3.save()
student4 = Student.new({ 'name' => 'Sergey Brin'})
student4.save()


subject1 = Subject.new({'name' => 'Advanced Jet Propulsion', 'teacher' => 'RM Scott'})
subject1.save()

subject2 = Subject.new({'name' => 'Warp Drive Technology', 'teacher' => 'Rob McCafferty'})
subject2.save()

subject3 = Subject.new({'name' => 'Extraterrestrial Metallurgy', 'teacher' => 'Professor X'})
subject3.save()

binding.pry
nil
