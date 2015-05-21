require 'httparty'

class TenDayForecast
  attr_reader :zip_code


  def initialize(zip_code)
    @zip_code = zip_code
  end


  def forecast(day)
    forecast = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip_code}.json")
    forecast = forecast["forecast"]["txt_forecast"]["period"][day]["fcttext"]
  end




end
