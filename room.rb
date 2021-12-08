class Room
  attr_reader :area

  def initialize(coords)
    working = 0

    coords.each_cons(2) do |p1, p2|
      a, b = p1
      c, d = p2

      working += (a * d - b * c)
    end

    @area = working.abs / 2
  end
end
