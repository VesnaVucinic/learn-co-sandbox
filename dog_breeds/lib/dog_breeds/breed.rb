class DogBreeds::Breed 
  attr_accessor :name 
  attr_writer :breed_profile :dogs_for_sale 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @breed_profile = []
    @dogs_for_sale = []
    save
  end
  
  def self.all
    DogBreeds::Scraper.scrape_breeds if @@all.empty?
    @@all
  end
  
  def get_profile 
    DogBreeds::Scraper.scrape_breed_profile(self) if @breed_profile.empty?
    DogBreeds::Scraper.scrape_dogs_for_sale(self) if @dogs_for_sale.empty?
  end
  
  def save
   @@all << self
  end
  
end