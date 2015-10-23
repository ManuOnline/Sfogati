# Main game window

class GameWindow < Window
  
  def initialize
    super(200,200,false)
    self.caption = "SFOGATI!"
    $window = self
    $scene = SceneMap.new
    $text = Text.new
  end
  
  def update
    $scene.update
    $coord_x = mouse_x
    $coord_y = mouse_y
  end
  
  def draw
    $scene.draw
  end
  
  def button_down(id)
    $scene.button_down(id)
  end
  
end