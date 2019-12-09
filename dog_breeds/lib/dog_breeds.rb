require_relative "./dog_breeds/version"
require_relative "dog_breeds/cli"
require_relative "dog_breeds/breed"
require_relative "dog_breeds/scraper"

require 'pry'
require 'nokogiri'
module DogBreeds
  class Error < StandardError; end
  # Your code goes here...
end