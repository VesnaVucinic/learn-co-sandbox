class DogBreeds::Highlights 
  attr_accessor :name :breed :pro_con
  
  @@all = []
  
  def initialize(name, breed)
    @name = name
    @breed = breed
    save
  end
  
 
  def save
   @@all << self
  end
  
end