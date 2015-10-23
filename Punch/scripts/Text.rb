class Text < Font

	def initialize
		@font = Font.new($window,"graphics/Destruccion.ttf",16)
	end

	def draw_text(text,x,y,z,scale_x = 1.0, scale_y = 1.0, color = Color.new(100,100,255), mode = :default)
		@font.draw(text,x,y,z,scale_x = 1.0, scale_y = 1.0, color = Color.new(100,100,255), mode = :default)
	end

end