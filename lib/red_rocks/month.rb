class RedRocks::Month
    attr_accessor :name

    @@all = []

    #class method
    def self.all 
        @@all
    end

    def initialize(name)
        @name = name
        
    end
    
end