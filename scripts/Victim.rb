class Victim

	def initialize(x,y)
		@pensieroso = Image.new($window, "graphics/pensieroso.png", false)
		@interdetto = Image.new($window, "graphics/interdetto.png", false)
		@spavento = Image.new($window, "graphics/spavento.png", false)
		@sorpresa = Image.new($window, "graphics/sorpresa.png", false)
		@manobocca = Image.new($window, "graphics/manobocca.png", false)
		@sfida = Image.new($window, "graphics/sfida.png", false)
		@dolore = Image.new($window, "graphics/dolore.png", false)
		@stanco = Image.new($window, "graphics/stanco.png", false)
		@tosse = Image.new($window, "graphics/tosse.png", false)
		@basta = Image.new($window, "graphics/basta.png", false)
		@naso = Image.new($window, "graphics/naso.png", false)
		@urlodolore = Image.new($window, "graphics/urlodolore.png", false)
		$stato = 0
	end
	
	def draw(camera_x, camera_y, z=0)
		case $stato
		when 0
			@pensieroso.draw(36, 30, 0)
		when 1
			@interdetto.draw(36, 30, 0)
		when 2
			@spavento.draw(36, 30, 0)
		when 3
			@sorpresa.draw(36, 30, 0)
		when 4
			@manobocca.draw(36, 30, 0)
		when 5
			@sfida.draw(36, 30, 0)
		when 6
			@dolore.draw(36, 30, 0)
		when 7
			@stanco.draw(36, 30, 0)
		when 8
			@tosse.draw(36, 30, 0)
		when 9
			@basta.draw(36, 30, 0)
		when 10
			@naso.draw(36, 30, 0)
		when 11
			@urlodolore.draw(36, 30, 0)
		end
	end

	def update
		
	end #chiude update
	
end