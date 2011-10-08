def max_element
  l = lambda { return [1,2,3,4] }
  array = l.call

  return array.max
end

p max_element # => 4

def max_element2
  p = Proc.new { return [1,2,3,4] }
  array = p.call  #  сработал return из p в контексте функции
  return array.max
end

p max_element2 # => [1,2,3,4]


