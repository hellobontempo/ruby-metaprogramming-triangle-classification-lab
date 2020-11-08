require "pry"
class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def kind
    if  (@a + @b) <= @c || (@a + @c) <= @b || (@b + @c) <= @a
         @a + @b + @c <= 0
      raise TriangleError
    elsif @a == @b && @a == @c && @b == @c 
      :equilateral
    elsif @a == @b || @a == @c || @b == @c 
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
  end


end
