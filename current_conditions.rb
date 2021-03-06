require 'httparty'

class CurrentConditions
  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
    @weather_info = get_data
  end


  def temp
     @weather_info["current_observation"]["temp_f"]
  end


  def display_location
    @weather_info["current_observation"]["observation_location"]["full"]
  end


  def display_wind
    @weather_info["current_observation"]["wind_string"]
  end


  def display_humidity
    @weather_info["current_observation"]["relative_humidity"]
  end


  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip_code}.json")
  end







end
