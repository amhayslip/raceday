class RaceCar
attr_accessor :speed, :distance, :name

	def initialize(name)
		@name = name
		@speed = 0
		@distance = 0
	end


end



class RaceTrack
	def initialize
		@cars = []
		@racelength = 5
	end

	def add_car(car)
		@cars << car
		puts "You added #{car.name} to the Race Track!"
	end


	def start_race
		@racetime = 0
		@cars.each do |car| 
			car.distance = 0
			car.speed =(60 + rand(20))
		end
	end

	def forward_race
		
		@racetime =+ 1

			if @racetime < @racelength
					puts "The race has been going for #{@racetime} hours"
				end

				@cars.each {|car| 
					car.distance = (car.distance + car.speed)
					puts "The car #{car.name} has driven #{car.distance} miles."
				}

				@cars.each {|car|
					car.speed = car.speed = +(rand(20))
				}

			else
			
                windistance = 0
                winner = nil

                	@cars.each {|car|
                            if car.distance > windistance
                                winner = car.name
                                windistance = car.distance
                            end
                            }
                        puts "This concludes the race."
                        puts "The winner is #{winner}! who traveled #{windistance} miles!"
                    
            end

	

	def reset_cars
		@cars.each {|car| 
		car.distance = 0
		car.speed = 0}
	end


end


