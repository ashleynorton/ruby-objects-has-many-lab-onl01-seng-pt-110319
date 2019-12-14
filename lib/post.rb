class Post 
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title  
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def author_name
    if @author == nil 
      return nil 
    else 
      self.author.name 
    end 
  end 
  
  def self.post_count
    
  end 
end 