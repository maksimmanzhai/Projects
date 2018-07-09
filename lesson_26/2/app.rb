require "sqlite3"

# Open a database
db = SQLite3::Database.new "barbershop.db"
db.results_as_hash = true

db.execute 'select * from Users' do |row|
  puts row['username']
  puts "\t-\t"
  puts row['datestamp']
  puts '======'
end