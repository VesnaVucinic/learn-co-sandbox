class DogBreeds::CLI 

  def call 
    puts "\nWelcome! Let's find out more about the most popular breeds in UK."
    get_dog_breeds
    list_breeds
    get_chosen_breed
    show_highlights_for(chosen_breed)
  end
  
  def get_dog_breeds
    #to be scraped
    #@breeds = ["French Buldog", "English Buldog", "Chichuaua"]
    #DogBreeds::Breed.new("shih_tzu")
    #DogBreeds::Breed.new("buldog")
    
    @breeds = DogBreeds::Breed.all
  end
  
  def list_breeds
    #list breeds
    @breeds.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed.name}"
    end
  end
  
  def get_chosen_breed
    chosen_breed = gets.strip.to_i 
    show_highlights_for(chosen_breed) if valid_input(chosen_breed, @breeds)
  end
  
  def valid_input(input,data)
    input.to_i <=data.length && input.to_i > 0 
  end
  
  def show_highlights_for(chosen_breed)
    breed = @breeds[chosen_breed - 1]
    #DogBreeds::Highlights.new('Positive' breed)
    #DogBreeds::Highlights.new('Negative', breed)

    highlights = breed.highlights
    puts "Here are the breed_highlights for #{breed.name}."
    #binding.pry
  end
end
