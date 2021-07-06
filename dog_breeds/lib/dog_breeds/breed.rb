class DogBreeds::Breed 
  attr_accessor :name 
  attr_writer :profile, :sale 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @profile = []
    @sale = []
    save
  end
  
  def self.all
    DogBreeds::Scraper.scrape_breeds if @@all.empty?
    @@all
  end
  
  def get_dog_data 
    DogBreeds::Scraper.scrape_profile(self) if @profile.empty?
    DogBreeds::Scraper.scrape_sale(self) if @sale.empty?
  end
  
  def save
   @@all << self
  end
  
end