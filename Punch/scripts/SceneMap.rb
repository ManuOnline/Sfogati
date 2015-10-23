class SceneMap

	def initialize
		@pezzo2 = Image.new($window, "graphics/pezzo2.png", false)
		@pointer = Image.new($window, "graphics/pointer.png", false)
		@punch_sound = Sample.new($window, "audio/punch.wav")
		@blood = Image.load_tiles($window, "graphics/blood2.png", 150, 150, false)
		@score = 0
		@faccia = Victim.new(36, 30)
		@punched = true
		@blooding = false
	end

	def update
		punch
	end

	def draw
		$text.draw_text("PUGNI DATI: #{@score}", 5, 5, 0)
		@faccia.draw(36, 30, 0)
		if  @blooding == true
			frame = milliseconds / 110 % @blood.size
			@blood[frame].draw(36, 30, 0)
		end
		if frame == 6
			@blooding = false
		end
		
		@pointer.draw($window.mouse_x, $window.mouse_y, 1)
	end

	def button_down(id)
		if id == MsLeft then
			mouse_click
		end
	end
	
	def punch
		if $window.mouse_x.between?(57, 130) && $window.mouse_y.between?(21, 112)
			if @punched == false && @blooding == false
				@punched = true
				@blooding = true
				@punch_sound.play
				@score +=1
				$stato = rand(10)+1
			end
		else @punched = false
			@blooding = false
		end
	end
	
	def mouse_click
		#puts "Coord_x: #{$coord_x}"
		#puts "Coord_y: #{$coord_y}"
	end

end
