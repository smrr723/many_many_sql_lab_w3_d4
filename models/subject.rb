require_relative('../db/sqlrunner')
require_relative('../models/student')

class Subject

attr_reader :id
attr_accessor :name, :teacher

def initialize ( options )
  @id = options['id'].to_i
  @name = options['name']
  @teacher = options['teacher']

end

def self.all()
  sql = "SELECT * FROM subjects"
  values = []
  subjects = SqlRunner.run(sql, values)
  result = subjects.map { |subject| Subject.new( subject ) }
  return result
end

def save()
  sql = "INSERT INTO subjects
  (name, teacher
    )
    VALUES
    ($1, $2)
    RETURNING id;"
    values = [@name, @teacher]
    subject = SqlRunner.run( sql, values ).first
    @id = subject['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM subjects"
  values = []
  SqlRunner.run(sql, values)
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

end
