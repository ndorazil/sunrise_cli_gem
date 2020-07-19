#lib/sunrise_cli_gem/api.rb

require "pry"
require "http"
require "httparty"

module SunriseCliGem
    class API 
      API_HOST = "https://api.sunrise-sunset.org/json"
  
        def self.sunrise_search(latitude, longitude, date)
            search_path = "?lat=#{latitude}&lng=#{longitude}&date=#"
            url = "#{API_HOST}#{search_path}"
            params = {
            latitude: latitude,
            longitude: longitude,
            date: date
            }
      
            response = HTTP.get(url, params: params)
            JSON.parse(response)
        end

        def self.get_times(latitude, longitude, date)
            data = self.sunrise_search(latitude, longitude, date)
            data["results"]
        end
      
    end
end