seconds_old = 1031 * 1000000

# Replace "nil" with math to determine the number of years in seconds_old
years_old = seconds_old/(60*60*24*365)
puts "Given I am #{seconds_old} seconds old, I am #{years_old} years old"