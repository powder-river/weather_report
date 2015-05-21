require 'httparty'

class CurrentConditions
  attr_reader :zip_code

  def initialize(zip_code)
    @zip_code = zip_code
  end

  def temp
    temp = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/CA/San_Francisco.json")
    temp = temp["current_observation"]["temp_f"]
  end

end
