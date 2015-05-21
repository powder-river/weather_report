require 'minitest/autorun'
require 'minitest/pride'
require 'httparty'
require './current_conditions.rb'

class ApplicationTest < Minitest::Test

  def test_classes_exist
    assert CurrentConditions
  end

  def test_current_temp
    current_conditions = CurrentConditions.new(82009)
    assert_in_delta 50,100 , current_conditions.temp
  end




end
