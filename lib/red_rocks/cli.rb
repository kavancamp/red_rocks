class RedRocks::CLI

    def call 
        list_events
        menu
    end

    def list_events #displays list of events 
        puts "\nEvents:"
        @events = RedRocks::Event.all
        @events.each.with_index(1) do |event, x| 
            puts "#{x}. '#{event.title}' by #{event.artist} -  #{event.date}, #{event.timestamp}"
        end
    end
    
    def menu

        puts "\nHello and Welcome to the RedRocks CLI"

        input = nil
        while input != "exit"
            
            puts "\nEnter show #, 'list' to display the list again, or enter 'exit' to quit"
            input = gets.strip.downcase 

        end
    end 
    
end