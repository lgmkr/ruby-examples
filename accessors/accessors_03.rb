class Post

  def title #getter
    @title
  end

  def title= (value) #setter
    @title = value
  end

end

puts "--- play with Post class"

p = Post.new
p.title = "bye"
p p.title
