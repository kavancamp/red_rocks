class RedRocks::CLI

    def call 
        list_events
        menu
        months
    end

    def months #get and return months
        #temporary data
        
    end

    def month_prompt #prompt user for month choice

    end

    def list_events #displays list of events 

        @events = RedRocks::Even
        t.all
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
            #Capture input using gets
            #.strip method to remove any new lines or leading and trailing whitespace.
         # if input.to_i > 0 && input.to_1 < 3
               # the_event = @events[input.to_i-1]
              #  puts "\n\t'#{the_event.title}' by #{the_event.artist} - #{the_event.timestamp}, #{the_event.date}"
              #  puts "\n\t#{the_event.description.capitalize!}" if the_event.description != nil
              #  default = "https://www.redrocksonline.com/events/?view=calendar"
               # if @the_event.url
                  #  doc = Nokogiri::HTML(open("#{the_event.url}"))
                  #  event = doc.search("div.article-body p").text
                  #  puts"\n"
                  #  puts event
                  #  puts "\n"
                    #puts the_event.url
               # else   
                   # puts"\n Take a look at https://www.redrocksonline.com/events/?view=calendar for more information on the venue and events!"
               # end
               # elsif input == 'exit'
               #     puts 'goodbye'
              #  elsif input == 'list'
              #      list_events
         #   else 
             #   puts "\n Invalid Entry, please enter 'list', 'exit', or enter the number of an Event need more information on"
           # end
       # end
    #end 
end