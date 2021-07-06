class RoyalParks::Park
    attr_accessor :name, :description, :url, :offers  
    @@all = []
   
    def initialize(name, description, url)
      @name = name
      @description = description
      @url = url
      @offers = []
      save
    end 

    def self.all 
      RoyalParks::Scraper.scrape_parks if @@all.empty? #if there isn't any park I want to scrape it
      @@all
    end

    def get_offers
      #if there isn't any offers I want to scrape it
      RoyalParks::Scraper.scrape_offers(self) if @offers.empty? #self is park - RoyalParks::Park 
    end 

    def save
      @@all << self  #self is RoyalParks::Park:0x00007fffc743d7c0, instance of park with @description, @name, @url, @offers
    end

end