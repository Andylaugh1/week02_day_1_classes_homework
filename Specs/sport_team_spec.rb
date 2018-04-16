require("minitest/autorun")
require("minitest/rg")
require_relative("../sport_team")

class TestSportTeam < MiniTest::Test

  def test_get_team_name
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    assert_equal("Dynamo", team.name())
  end

  def test_get_players
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    assert_equal(["John", "Jill", "Bill", "Jane"], team.players())
  end

  def test_get_team_coach
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    assert_equal("Carter", team.coach())
  end

  def test_set_coach_name
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    team.coach = "Shankly"
    assert_equal("Shankly", team.coach())
  end

  def test_add_new_player
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    team.add_player("Kirsty")
    assert_equal(["John", "Jill", "Bill", "Jane", "Kirsty"], team.players())
  end

  def test_check_player
    team = SportTeam.new("Dynamo", ["John", "Jill", "Bill", "Jane"], "Carter")
    team.check_player("Bill")
    assert_equal(true, team.check_player("Bill"))
  end


end
