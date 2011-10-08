check_values = [1, 22, 34, 65, 66]
values = [1, 23, 123, 11, 65, 33]

pub = lambda { |val| values.include?(val) }

if check_values.any? { |a| pub.call(a) }
  p "any"
end 

if check_values.none? { |a| pub.call(a) }
  p "none"
end 
