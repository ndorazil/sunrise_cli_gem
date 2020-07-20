module SunriseCliGem
    class CLI

        def start
            puts " "
            puts "Welcome to the Sunrise CLI!"
            puts " "

            set_location_and_date

            puts " "
            puts "Would you like to search again?"

            @answer = gets.chomp

            if @answer == "yes"
                reset
                SunriseCliGem::CLI.new.start
            elsif @answer == "no"
                puts " "
                puts "Thank you! Have a wonderful day!"
            end
        end

        def set_location_and_date
            puts "Please visit the following website to find the latitude and longitude for your desired location." 
            puts " "
            puts "----------"
            puts "https://www.latlong.net/ "
            puts "----------"
            puts " "
            puts "First, please input the latitude of your location."

            @latitude = gets.chomp

            puts " "
            puts "Now, input the longitude."

            @longitude = gets.chomp
            
            puts " "
            puts "And lastly, the date (YYYY-MM-DD) you would like to search for sunrise and sunset times on."
            
            @date = gets.chomp

            Times.load_by_location(@latitude, @longitude, @date)

            puts " "
            puts "Sunrise: #{Times.all[0].sunrise}"
            puts "Sunset: #{Times.all[0].sunset}"
        end

        def reset
            Times.clear
        end

    end
end