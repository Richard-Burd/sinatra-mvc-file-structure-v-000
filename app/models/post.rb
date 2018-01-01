class Post
  attr_accessor :id
  @@all = []

  def initialize(id)
    @id = id

    @@all << self
  end

  def self.all
    @@all
  end
end

x = Post.new(1)
y = Post.new(2)
z = Post.new(3)
