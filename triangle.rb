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
def triangle(*sides)
  return(:equilateral) if sides.combination(2).all? {|a,b| a == b}
  return(:isosceles) if sides.combination(2).any? {|a,b| a == b}
  return(:scalene) if sides.combination(2).none? {|a,b| a == b}
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
