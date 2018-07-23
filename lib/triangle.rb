class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    error = TriangleError.new
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise Triangle::TriangleError
      error.size_side_inequality_error_message
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise Triangle::TriangleError
      error.size_side_inequality_error_message
    else
      if side1 == side2 && side1 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def size_side_inequality_error_message
      "Triangles with no size are illegal
      Triangles with negative sides are illegal
      Triangles violating triangle inequality are illegal"
    end
  end
end
