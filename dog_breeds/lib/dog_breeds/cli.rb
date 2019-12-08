#require 'pry'
class DogBreeds::CLI 

  def call 
    puts "Welcome! Let's find out more about the most popular breeds in UK."
    #Please select the one you want to see breed highlaghts."
    #binding.pry
    get_dog_breeds
    get_selected_breed
  end
  
  def get_dog_breeds
    #to be scraped
    @breeds = ["French Buldog", "English Buldog", "Chichuaua"]
  end
  
  
  def get_selected_breed
    #list breeds
    @breeds.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed}"
    end
  end
  
  def get_chosen_breed
    chosen_breed = gets.strip
  end
    
end
