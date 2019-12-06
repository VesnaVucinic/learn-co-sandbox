#require 'pry'
class BreedHighlights::CLI 

  def call 
    puts "Welcome! Let's find out more about the most popular breeds in UK."
    #Please select the one you want to see breed highlaghts."
    #binding.pry
  end
  
  def get_dog_breeds
    #to be scraped
    @breeds = ["French Buldog", "English Buldog", "Chichuaua"]
    binding.pry
  end
  
  def get_selected_breed
    #list breeds
    @breeds.each_with_index do |index, breed|
      puts "#{index} #{breed}"
    end
  end
    
end