class RedRocks::CLI

    def call
        list_events
        menu
    end

    def list_events
        puts "\nEvents:"
        @events = RedRocks::Event.all
        @events.each.with_index(1) do |event, x|
            puts "#{x}. '#{event.title}' by #{event.artist} -  #{event.date}, #{event.timestamp}"
        end
    end
    
    def menu
    end 
    
end