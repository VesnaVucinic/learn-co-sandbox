class DogBreeds::Scraper

  def scrape_breeds
    doc = Nokogiri::HTML(open("https://www.pets4homes.co.uk/dog-breeds/?sort=mostpopular"))
  end

end