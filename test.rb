require 'minitest/autorun'
require 'minitest/pride'
require 'httparty'
require 'faker'
require './current_conditions.rb'
require './sun_up_down.rb'
require './ten_day_forecast.rb'
require './alerts.rb'

class ApplicationTest < Minitest::Test

  def test_classes_exist
    assert CurrentConditions
    assert SunUpDown
  end

#>>>>>>>>>>>>>>>CurrentConditions Tests, All Good<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  # def test_current_temp
  #   current_conditions = CurrentConditions.new(82009)
  #   assert_in_delta 50, current_conditions.temp, 100
  # end

  # def test_display_location
  #   location = CurrentConditions.new(82009)
  #   assert_equal "string", location.display_location
  # end

  # def test_wind
  #   wind = CurrentConditions.new(82009)
  #   assert_equal 27, wind.display_wind
  #
  # end

  # def test_humidity
  #   humidity = CurrentConditions.new(82009)
  #   assert_equal 27, humidity.display_humidity
  # end
#===============================================================================

#how to test this?==========sun_up and Sun down good ====================================================
  # def test_sunrise_time
  #   sun_up = SunUpDown.new(82009)
  #   assert_equal 0, sun_up.sunrise
  # end

  # def test_sunset_time
  #   sun_down = SunUpDown.new(82009)
  #   assert_equal 1 , sun_down.sunset
  # end
#===============================================================================

  # def test_10_day_forecast_day0
  #   day0 = TenDayForecast.new(82009)
  #   assert_equal "Cloudy skies. High near 55F. Winds SSE at 15 to 25 mph.", day0.forecast
  # end
#>>>>>>>>>>>>WORKING>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  # def test_weather_alert
  #   weather_alert = WeatherAlerts.new(73463)
  #   assert_equal "message", weather_alert.alerts
  # end

  # def test_hurricane
  #   hurricane = Hurricane.new(82009)
  # end



end
