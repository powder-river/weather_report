require 'httparty'
class Hurricane

  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
  end

  def hurricane_status
    weather_info = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
    hurricane_info = weather_info["currenthurricane"]

    if hurricane_info.length > 0
      hurricane_name = hurricane_info[0]["stormInfo"]["stormName_Nice"]
      hurricane_long = hurricane_info[0]["Current"]["long"]
      hurricane_lat = hurricane_info[0]["Current"]["lat"]
      hurricane_wind = hurricane_info[0]["Current"]["WindSpeed"]["Mph"]
      hurricane_final = "#{hurricane_name} is located at #{hurricane_lat} laitude, #{hurricane_long} longitude and has wind speeds of #{hurricane_wind}mph."
    else
      message = "There are currently no active hurricanes being tracked."
    end
  end
end
