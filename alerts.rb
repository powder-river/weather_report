require 'httparty'

class WeatherAlerts
  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code

  end


  def alerts
  weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{zip_code}.json")
  weather_alerts = weather_info["alerts"]

    if weather_alerts.length > 0
      weather = weather_alerts[0]["description"]
    else
      message = "There are currently no weather alerts in your area"
    end
  end




end
