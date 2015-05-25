require 'httparty'

class SunUpDown
  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
    @weather_info = get_data
  end


  def sunrise
    sun_hour = @weather_info["sun_phase"]["sunrise"]["hour"]
    sun_minute = @weather_info["sun_phase"]["sunrise"]["minute"]
    "#{sun_hour}:#{sun_minute}"
  end


  def sunset
    sun_hour = @weather_info["sun_phase"]["sunset"]["hour"]
    sun_minute = @weather_info["sun_phase"]["sunset"]["minute"]
    "#{sun_hour}:#{sun_minute}"
  end


  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip_code}.json")
  end



end
