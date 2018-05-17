class Author
  attr_accessor :name 
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = [] 
    @@post_count +=1
  end 
  
  def posts
    @posts
  end
  
  def add_post(post_data) 
    post = Post.new(post_data) 
    @posts << post 
    post.author = self 
    return post
  end 
  
  def add_post_by_title(post_data)
    return add_post(post_data)
  end 
  
  def self.post_count
    return @@post_count 
  end 
end 