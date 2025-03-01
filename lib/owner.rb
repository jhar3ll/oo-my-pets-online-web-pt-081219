class Owner
  attr_reader :name, :species 
  @@all = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all.push(self)
  end 
  
  def say_species
   return "I am a #{@species}."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count
   self.all.count 
  end
  
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end 
  
 def feed_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    
    Dog.all.each do |dog| 
      dog.mood = "nervous" 
      dog.owner = nil
    Cat.all.each do |cat| 
      cat.mood = "nervous" 
      cat.owner = nil
    end  
  end
end 

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
    
    
end