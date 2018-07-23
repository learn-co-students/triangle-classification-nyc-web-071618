require 'pry'
class Triangle

  attr_reader :base, :side1, :side2

  def initialize(base, side1, side2)
      @base = base
      @side1 = side1
      @side2 = side2
  end

  def kind
    validate_triangle(@base, @side1, @side2)
      if @base == @side1 && @base == @side2
        return :equilateral
      elsif @side1 == @side2 && @base < @side1 || @base == @side2 && @side1 < @base || @base == @side1 && @side2 < @base
        return :isosceles
      # elsif triangle.each do |x|
      #         triangle.each do |y|
      #           if x == y
      #             return :isosceles
      #           end
      #         end
      #       end
      elsif @side1 != @side2 && @base != @side1 || @side1 != @side2
        return :scalene
    end
  end

  def validate_triangle(base, side1, side2)
    x = [base, side1, side2].sort
    if x.any? {|side| side <= 0} == true
      raise TriangleError
    elsif x[0] + x[1] <= x[2]
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Traingle is not valid"
    end
  end
end