require 'httparty'
temp = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/CA/San_Francisco.json")

temp = temp["current_observation"]["observation_location"]["city"]
puts temp
