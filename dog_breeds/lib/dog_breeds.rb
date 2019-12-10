require_relative "./dog_breeds/version"
require_relative "dog_breeds/cli"
require_relative "dog_breeds/breed"
require_relative "dog_breeds/scraper"
require_relative "dog_breeds/higlights"

require 'pry'
require 'nokogiri'
require 'open-url'

module DogBreeds
  class Error < StandardError; end
  # Your code goes here...
end