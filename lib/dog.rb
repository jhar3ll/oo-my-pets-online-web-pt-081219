class Dog
attr_reader :name 
  attr_accessor :owner, :mood
  
  @@all = []
  
  def initialize(name, owner, mood="nervous")
    @name = name 
    @owner = owner
    @mood = mood
    @@all.push(self)
  end 
  
  def self.all 
    @@all 
  end 
  
  def cats 
    Dog.all.select {|dog| dog.owner == self}
  end 
end