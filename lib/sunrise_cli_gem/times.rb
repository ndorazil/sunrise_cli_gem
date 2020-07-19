#lib/sunrise_cli_gem/times.rb
require "pry"
module SunriseCliGem
    class Times

        @@all = []

        def self.all
            @@all
        end

        def self.load_by_location(latitude, longitude, date)
            sunrise_and_set_times = API.get_times(latitude, longitude, date)
            # binding.pry
            @@all << self.create_from_results(sunrise_and_set_times)
        end

        def self.create_from_results(results)
            self.new(results)
        end

        def self.clear
            @@all.clear
        end

        attr_accessor :sunrise, :sunset

        def initialize(attributes={})
            @sunrise = attributes["sunrise"]
            @sunset = attributes["sunset"]
        end

        # binding.pry

    end
end