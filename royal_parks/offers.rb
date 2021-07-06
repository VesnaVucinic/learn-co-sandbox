class RoyalParks::Offer
  attr_accessor :name, :park, :link
  @@all = []
  
   
  def initialize(name, park, link)
    @name = name
    @park = park
    @link = link
    add_to_park
    save
  end 

  def self.all 
    @@all 
  end

  def add_to_park
    @park.offers << self unless @park.offers.include?(self) #<RoyalParks::Offer:0x00007fffe4d9af08 = self, instance of offer with @link, @name, @park = RoyalParks::Park:0x00007fffe4c674b0
  end 

  def save
    @@all << self   #RoyalParks::Offer:0x00007fffd6a30c40 = self is instance of offer
  end
end 