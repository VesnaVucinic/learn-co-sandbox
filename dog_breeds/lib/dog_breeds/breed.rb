class DogBreeds::Breed 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    DogBreeds::Scraper.scrape_breeds if @@all.empty?
    @@all
  end
  
  def save
   @@all << self
  end
  
end