require 'loaded_die'
require 'csv'

# read path
csvfile = ARGV[0]

# read CSV
coffee_data = []
options = {
  :headers => :first_row,
  :return_headers => false
}
CSV.foreach(csvfile, options) do |row|
  coffee_data << [row[0], row[1].to_i, row[2]]
end

# get weights
weights = coffee_data.map { |row| row[1] }

# create loaded die
die = LoadedDie.new(*weights)

# roll!
outcome = die.roll

# index into coffee_data
winning_row = coffee_data[outcome]

# print result
p "The winner is:"
p "#{winning_row[0]} in #{winning_row[2]}"