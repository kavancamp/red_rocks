#environment
require_relative "red_rocks/version"
require_relative "red_rocks/cli"
require_relative "red_rocks/scraper"
require_relative "red_rocks/event"
require_relative "red_rocks/month"

require 'pry'
require 'nokogiri'

module RedRocks
  class Error < StandardError; end
  # Your code goes here...
end
