class SportTeam

  attr_accessor(:name, :players, :coach)

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach

    def add_player(player)
      return @players << player
    end

    def check_player(name)
      for player in @players
        if player == name
          return true
        end
      end
    end

  #   def get_name()
  #     return @name
  #   end
  #
  #   def get_players()
  #     return @players
  #   end
  #
  #   def get_coach()
  #     return @coach
  #   end
  #
  #   def set_coach_name(new_coach)
  #     @coach = new_coach
  #   end
  #
  end



end
