class TriangleError < StandardError
  
end
class Triangle
  # write code here
  TriangleError
  def initialize(a,b,c)
    if a <=0 || b <= 0 || c<=0 
      raise TriangleError
    end
    if a + b <= c || a+c <=b || b+c <= a 
      raise TriangleError
    end
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a== @b && @b == @c 
      :equilateral
    elsif ( @a == @b || @b == @c || @a == @c)
      :isosceles
    else
      :scalene
    end
  end
  
end # end triangle class
