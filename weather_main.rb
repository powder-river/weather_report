require 'httparty'
require './current_conditions.rb'
require './sun_up_down.rb'
require './ten_day_forecast.rb'
require './alerts.rb'
require './hurricanes.rb'

print "Hello, please enter your zipcode to retrieve local area weather..."

user_input = gets.chomp
current_conditions = CurrentConditions.new(user_input)
sun_status = SunUpDown.new(user_input)
ten_day = TenDayForecast.new(user_input)
weather_alert = WeatherAlerts.new(user_input)
hurricane = Hurricane.new(user_input)

puts "The current weather for #{current_conditions.display_location} is as follows:\n\n
  The temperature is currently #{current_conditions.temp} degrees farenheit.\n\n
  The wind is blowing #{current_conditions.display_wind}" "Humidity is currently at #{current_conditions.display_humidity}.\n\n
  The Sun will rise at #{sun_status.sunrise} and set at #{sun_status.sunset}\n\n
  The ten day forecast is as follows: #{ten_day.forecast}\n\n
  Weather Alerts in your area: #{weather_alert.alerts}\n\n
  Active Hurricane Status: #{hurricane.hurricane_status}"
