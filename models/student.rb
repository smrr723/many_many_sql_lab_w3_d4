require_relative('../db/sql_runner')
require_relative('../models/subjects')


class Student

attr_reader :id
attr_accessor :name

def initialize( options )
  @id = options['id'].to_i
  @name = options['name']
end





# write our attr_accessors for student properties
# def initialize @ these props
# CRUD - write your save, read all, delete all methods
# refactor using the sql runner file for repeating code like opening and closing your database


end
