require_relative "race_cars.rb"

puts "Create our racetrack..."
daytona = RaceTrack.new
puts "The racetrack has been created!"

puts "Create our race cars..."
car1 = RaceCar.new("Ferrari")
car2 = RaceCar.new("Porsche")
car3 = RaceCar.new("Lambo")
puts "Your cars have been created!"

puts "Add our cars to the track..."
daytona.add_car(car1)
daytona.add_car(car2)
daytona.add_car(car3)

puts "Start the race..."
daytona.start_race
puts "The race has began!"

puts "Forward the race by one hour and check cars' position..."
daytona.forward_race
puts "The race has been forwarded by one hour!"

puts "Forward the race by one hour and check cars' position..."
daytona.forward_race
puts "The race has been forwarded by one hour!"

puts "Reset the race..."
daytona.reset_cars
puts "The race has been reset!"
 