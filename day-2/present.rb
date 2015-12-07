class Present
  def initialize(width, height, depth)
    @width, @height, @depth = width, height, depth
  end

  def wrapper_required
    area + faces.min
  end

  def ribbon_required
    volume + smallest_perimeter
  end

  private

  def sides
    [@width, @height, @depth]
  end

  def faces
    [@width * @height, @width * @depth, @height * @depth]
  end

  def area
    2 * faces.reduce(:+)
  end

  def volume
    sides.reduce(:*)
  end

  def smallest_perimeter
    2 * sides.sort.take(2).reduce(:+)
  end
end
