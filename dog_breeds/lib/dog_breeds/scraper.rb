class DogBreeds::Scraper

  def self.scrape_breeds
    doc = Nokogiri::HTML(open(https://www.pets4homes.co.uk/dog-breeds/))
    
    breeds = doc.css("div.inner-div-search div.breedprofile-card")
      
      breeds.each do |dog| 
      breed = dog.css("h2.title").text
      name = breed
      DogBreeds::Breed.new(name)
      #dog_profile = dog.css("div.col-xs-6 a").attr('href')
      #puts dog_profile
      end
      
  end
  
  def self.scrape_highlights(breed)
    doc = Nokogiri::HTML(open("https://www.pets4homes.co.uk/dog-breeds/?sort=mostpopular"))
  end  
  
end