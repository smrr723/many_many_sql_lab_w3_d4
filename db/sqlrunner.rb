require('pg')
# above requires in postgreSQL to utilize the PG class below
class SqlRunner

  def self.run( sql, values )
    begin
      db = PG.connect({ dbname: 'high_school', host: 'localhost' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close
    end
    return result
  end

end
