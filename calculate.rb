require_relative 'coord_maker'
require_relative 'room'

tokens = File.read('input.txt').scan /\w+/
vectors = tokens.each_slice(2).map { |direction, distance| [direction, distance.to_i] }

coord_maker = CoordMaker.new(vectors)
room = Room.new(coord_maker.coords)

puts "Room area: #{room.area}"
