require_relative('../db/sqlrunner')
require_relative('../models/subject')
require_relative('../models/student')

class Student_Subject

attr_reader :id
attr_accessor :student_id, :subject_id

def initialize(options)
  @id = options['id'].to_i
  # because SQL will return you a string
  @student_id = options['student_id']
  @subject_id = options['subject_id']

end

def self.all()
end

def save()
end

def self.delete_all()
end

def

end


# ensure you have all your requires in place, i.e. pry-byebug, PG, reference files and that their locations and names are all correct
  # write our attr_accessors for student properties
  # def initialize @ these props
  # CRUD - write your save, read all, delete all methods
  # Methods > sql query setter
  # values setting to empty array or other prop
  # sqlrunner for dbprepare and exec
  # then get the id from sql and set it to an integer to give @id it's value

  # refactor using the sql runner file for repeating code like opening and closing your database
