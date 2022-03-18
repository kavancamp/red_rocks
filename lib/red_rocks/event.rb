class RedRocks::Event 
    attr_accessor :title, :artist, :timestamp, :date, :url, :description

    @@all=[]
    
    def self.all
        @@all
    end
end