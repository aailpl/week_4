class MyCar

	attr_accessor :colo
	attr_reader :

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end
	def speed_up(speed_inc)
		current_speed += speed_inc
	end

	def breake (speed_dec)
		current_speed -= speed_dec		
	end

	def off
		current_speed = 0	
	end
	
	def spray_paint(color)
		self.color = color
		
	end
end