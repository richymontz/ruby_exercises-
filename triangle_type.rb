def get_triangle_type(sides = [])
    return "no sides given" if sides.empty?
    return "not a triangle" if sides.size > 3

    if sides.uniq.size <= 1
        "equilateral"   
    elsif sides.uniq.size == 2
        "isosceles"
    elsif sides.uniq.size >= 3
        "scalene"
    end
end

p get_triangle_type([2, 6, 5])

p get_triangle_type([4, 4, 7])

p get_triangle_type([8, 8, 8])

p get_triangle_type([3, 5, 5, 2]) 
