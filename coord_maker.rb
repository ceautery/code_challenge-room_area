class CoordMaker
  attr_reader :coords

  def initialize(vectors)
    x = 0
    y = 0
    @coords = [[x, y]]

    vectors.each do |direction, distance|
      case direction
      when 'N'
        y += distance
      when 'S'
        y -= distance
      when 'E'
        x += distance
      when 'W'
        x -= distance
      end

      coords.push([x, y])
    end
  end
end
