class Student

  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS student (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql = <<-SQL
      DROP TABLE students 
      SQL
    DB[:conn].execute(sql) 
  end
  
end
