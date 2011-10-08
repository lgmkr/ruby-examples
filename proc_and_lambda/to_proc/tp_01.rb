names = ['Joy', 'Charlie', 'Stan']

result = names.map {|name| name.upcase}
p result

result = names.map(&:upcase)
p result

result = names.map( &(proc{ |obj, *args| obj.send(:upcase, *args) }) )
p result
