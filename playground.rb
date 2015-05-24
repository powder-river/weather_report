require 'httparty'



day = 0
ten_day_forecast = ""
while day < 20

  forecast = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/82009.json")
  ten_day_forecast += "#{forecast["forecast"]["txt_forecast"]["forecastday"][day]["title"]}: #{forecast["forecast"]["txt_forecast"]["forecastday"][day]["fcttext"]}\n\n"

  day += 1

end

puts ten_day_forecast
