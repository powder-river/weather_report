require 'httparty'
class SunUpDown

  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
  end


  def sunrise
    weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip_code}.json")
    weather_info = weather_info["sun_phase"]["sunrise"]
  end


  def sunset
    weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip_code}.json")
    weather_info = weather_info["sun_phase"]["sunset"]
  end



end
