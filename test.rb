require 'minitest/autorun'
require 'minitest/pride'
require 'httparty'
require 'faker'
require 'json'
require './current_conditions.rb'
require './sun_up_down.rb'
require './ten_day_forecast.rb'
require './alerts.rb'
require './hurricanes.rb'



class SunRiseSet
  private def get_data
    JSON.parse(File.open("astronomy.json").read)
  end
end

class CurrentConditions
  private def get_data
    JSON.parse(File.open("current_conditions.json").read)
  end
end

class TenDayForecast
  private def get_data
    JSON.parse(File.open("10_day.json").read)
  end
end

class WeatherAlerts
  private def get_data
    JSON.parse(File.open("alerts.json").read)
  end
end

class Hurricane
  private def get_data
    JSON.parse(File.open("hurricane.json").read)
  end
end



class ApplicationTest < Minitest::Test


  def test_current_temp
    current_conditions = CurrentConditions.new(82009)
    assert current_conditions.temp > -200 && current_conditions.temp < 200
  end


  def test_display_location
    location = CurrentConditions.new(82009)
    assert location.display_location.match(/./)
  end


  def test_wind
    wind = CurrentConditions.new(82009)
    assert wind.display_wind.match(/\d*?\.\d MPH/)
  end


  def test_humidity
    humidity = CurrentConditions.new(82009)
    humidity.display_humidity.match(/\d*%/)
  end


  def test_sunrise_time
    sun_up = SunUpDown.new(82009)
    assert sun_up.sunrise.match(/\d:?/)
  end


  def test_sunset_time
    sun_down = SunUpDown.new(82009)
    assert sun_down.sunset.match(/\d:?/)
  end


  def test_10_day_forecast_day0
    ten_forecast = TenDayForecast.new(82009)
    assert ten_forecast.forecast.match(/./)
  end


  def test_weather_alert
    weather_alert = WeatherAlerts.new(73463)
    assert weather_alert.alerts.match(/./)
  end


  def test_hurricane
    hurricane = Hurricane.new(82009)
    assert hurricane.hurricane_status.match(/./)
  end



end
