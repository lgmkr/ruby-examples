class Post
  attr_accessor :title, :language
end

p = Post.new
p.title = 'hello world' #call setter method
puts p.title #call getter method

p.language = 'russian' #call setter method
puts p.language #call getter method
