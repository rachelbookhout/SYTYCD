## Option 1: Use the Dancer Data and input into your Rails Console
## Option 2:Use the CSV

require 'csv'
CSV.foreach('dancer.csv', :headers => true) do |row|
  Dancer.create!(row.to_hash)
end
CSV.foreach('performance.csv', :headers => true) do |row|
  Performance.create!(row.to_hash)
end
