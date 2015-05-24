require 'httparty'
class SunUpDown

  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
    @weather_info
  end


  def sunrise
    weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip_code}.json")
    sun_hour = weather_info["sun_phase"]["sunrise"]["hour"]
    sun_minute = weather_info["sun_phase"]["sunrise"]["minute"]
    sunrise_time = "#{sun_hour}:#{sun_minute}"
  end


  def sunset
    weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip_code}.json")
    sun_hour = weather_info["sun_phase"]["sunset"]["hour"]
    sun_minute = weather_info["sun_phase"]["sunset"]["minute"]
    sunrise_time = "#{sun_hour}:#{sun_minute}"
  end

  private get_data



end
