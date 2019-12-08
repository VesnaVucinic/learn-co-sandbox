#require 'pry'
class DogBreeds::CLI 

  def call 
    puts "Welcome! Let's find out more about the most popular breeds in UK."
    #Please select the one you want to see breed highlaghts."
    #binding.pry
    get_dog_breeds
    list_breeds
    get_chosen_breed
  end
  
  def get_dog_breeds
    #to be scraped
    @breeds = ["French Buldog", "English Buldog", "Chichuaua"]
  end
  
  
  def list_breeds
    #list breeds
    @breeds.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed}"
    end
  end
  
  def get_chosen_breed
    chosen_breed = gets.strip.to_i 
    show_breed_highlights_for(chosen_breed) if valid_input(chosen_breed, @breeds)
    #binding.pry
  end
  
  def valid_input(input,data)
    input.to_i <=data.length && input.to_i > 0 
  end
  
  def show_breed_highlights_for(chosen_breed)
    breed = @breeds[chosen_breed - 1]
    puts "Here are the breed_highlights for #{breed}."
  end
end