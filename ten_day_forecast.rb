require 'httparty'

class TenDayForecast
  attr_reader :zip_code


  def initialize(zip_code)
    @zip_code = zip_code
    @weather_info = get_info
  end


  def forecast
    day = 0
    ten_day_forecast = ""
    while day < 20

      forecast = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip_code}.json")
      ten_day_forecast += "#{forecast["forecast"]["txt_forecast"]["forecastday"][day]["title"]}: #{forecast["forecast"]["txt_forecast"]["forecastday"][day]["fcttext"]}\n"

      day += 1

    end
    ten_day_forecast
  end




end
