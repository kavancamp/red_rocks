class RedRocks::Event 
    attr_accessor :title, :artist, :timestamp, :date, :url, :description
    #read and write accessors

    @@all = []
    
    def self.all 
        @@all
    end

    #set initial values for objects
    def initialize(title, artist, timestamp, url, date, description)
        @title = title
        @artist = artist
        @date = date
        @timestamp = timestamp
        @url = url
        @description = description
        @@all << self
    end
    
    def self.find_by_index(index)
        @@all[index]
      end

    
end