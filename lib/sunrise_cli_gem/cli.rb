module SunriseCliGem
    class CLI
        def initialize
            @input = ""
        end

        def start
            puts "Welcome to the Sunrise CLI!"
            set_location_and_date

        end

        def set_location_and_date
            puts "Please visit this website: https://www.latlong.net/ to find the latitude and longitude for your desired location."
            puts "First, please input the latitude."
            @latitude = gets.chomp

            puts "Now, the longitude."
            @longitude = gets.chomp

            puts "And lastly, the date (YYYY-MM-DD) you would like to search for sunrise and sunset times on."
            @date = gets.chomp

            Times.load_by_location(@latitude, @longitude, @date)

            puts "Sunrise: #{Times.all[0].sunrise}"
            puts "Sunset: #{Times.all[0].sunset}"
        end

        def reset
            
        end

    end
end