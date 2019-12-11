class DogBreeds::Breed 
  attr_accessor :name 
  attr_writer :highlights 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @highlights = []
    save
  end
  
  def self.all
    DogBreeds::Scraper.scrape_breeds if @@all.empty?
    @@all
  end
  
  def get_highlights 
    DogBreeds::Scraper.scrape_higlights(self) if @highlights.empty?
    #@highlights
  end
  
  def save
   @@all << self
  end
  
end