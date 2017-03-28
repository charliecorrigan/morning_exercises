require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/soccer_schedules'

class SoccerScheduleTest < Minitest::Test
  def test_if_it_exists
    a_league = ["team_1a", "team_2a", "team_3a", "team_4a", "team_5a", "team_6a", "team_7a", "team_8a"]
    schedule = SoccerSchedules.new(a_league, "easy")
    assert_instance_of SoccerSchedules, schedule
  end
  
  def test_if_create_schedule_returns_array
    a_league = ["team_1a", "team_2a", "team_3a", "team_4a", "team_5a", "team_6a", "team_7a", "team_8a"]
    schedule = SoccerSchedules.new(a_league, "easy")
    assert_equal Array, schedule.class
  end

  def test_if_easy_schedule_contains_no_duplicates
    a_league = ["team_1a", "team_2a", "team_3a", "team_4a", "team_5a", "team_6a", "team_7a", "team_8a"]
    schedule = SoccerSchedules.new(a_league, "easy")
    assert_equal schedule.flatten.length, schedule.flatten.uniq.length
  end
end