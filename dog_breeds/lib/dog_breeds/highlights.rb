class DogBreeds::Highlights 
  attr_accessor :name :breed :pro_con
  
  @@all = []
  
  def initialize(name, breed)
    @name = name
    @breed = breed
    #notify breed about Highlights
    save
  end
  
  def self.all
    @@all
  end
 
  def save
  @@all << self
  end
  
end