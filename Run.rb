=begin

Project: Calcolatore Incontri
Start date: 13/10/15
Author: Manu

=end

$: << File.dirname(__FILE__)

require 'gosu'
require 'rubygems'
include Gosu

classes = Dir.new("scripts/").entries
classes.delete(".")
classes.delete("..")
for i in 0...classes.size
  require "scripts/#{classes[i]}"
end

$window = GameWindow.new
$window.show