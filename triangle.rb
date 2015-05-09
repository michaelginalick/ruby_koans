# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	raise TriangleError if [a, b, c].min <= 0
	first, second, third = [a, b, c].sort
	raise TriangleError if first + second <= third 
	#[:equilateral, :isosceles, :scalene].fetch [a, b, c].uniq.size -1	

  if a == b && a == c && b == c
  	:equilateral
  elsif  a == b || b == c || a == c
  	:isosceles
  else a != b && a != c && b != c
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
	
	
end
