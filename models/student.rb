require_relative('../db/sqlrunner')
require_relative('../models/subject')


class Student

attr_reader :id
attr_accessor :name

def initialize( options )
  @id = options['id'].to_i
  @name = options['name']
end


def self.all()
  sql = "SELECT * FROM students"
  values = []
  students = SqlRunner.run(sql, values)
  result = students.map { |student| Student.new( student )}
  return result
end

def save()
  sql = "INSERT INTO students (
  name
  )
  VALUES
  (
    $1
  )
  RETURNING id"
  values = [@name]
  student = SqlRunner.run( sql, values).first
  @ID = student['id'].to_i

end

def self.delete_all()
  sql = "DELETE FROM students"
  values = []
  SqlRunner.run(sql, values)
end



# write our attr_accessors for student properties
# def initialize @ these props
# CRUD - write your save, read all, delete all methods
# Methods > sql query setter
# values setting to empty array or other prop
# sqlrunner for dbprepare and exec
# then get the id from sql and set it to an integer to give @id it's value

# refactor using the sql runner file for repeating code like opening and closing your database


end
