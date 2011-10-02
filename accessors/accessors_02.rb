class Post
  def title #getter
    p @title.class
  end
end

puts "--- play with Post class"

p = Post.new
p.title
p.title = "bye"
