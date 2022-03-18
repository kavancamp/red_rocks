class RedRocks::CLI

    def call 
        greeting
        months
        display_months
        month_prompt
        
    end

   
    def greeting
        puts "Hello User! Welcome to the RedRocks CLI."
        puts "\n"
    end

    def months #get months available
        #temporary data
       @months = ['April 2022', 'May 2022', 'June 2022', 'July 2022', 'August 22', 'September 22', 'October 22']
    end

    def display_months 
        #display months and prompt user for month choice
        #months variable (.each)iterate over array 
        @months.each.with_index(1) do | month, index |
        puts "#{index} #{month}"
        end
    end
    
    def month_prompt 
        puts "\nEnter the number for the month of which you would like to see events"
        month_choice = gets.strip.to_i
         #remove extra/change to integer

        list_events(month_choice) if is_valid?(month_choice, @months)
        #if choice is valid, list events
    end

    def is_valid?(input, data) #check validity of input
        input.to_i <= data.length && input.to_i > 0
    end
   
    def list_events(month_choice) #displays list of events 
        month = @months[month_choice. - 1]
         #index of array starts with 0

        puts "\n#{month} events: "
        @events = RedRocks::Event.all
        @events.each.with_index(1) do |event | 
            puts " #{event.title} by #{event.artist} -  #{event.date}, #{event.timestamp}"
        end
    end
 end  



        #input = nil
       #
           # puts "\nEnter show #, 'list' to display the list again, or enter 'exit' to quit"
            #input = gets.strip.downcase 
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