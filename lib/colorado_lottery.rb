class ColoradoLottery
  attr_reader :registered_contestants,
              :winners,
              :current_contestants
  def initialize
    @registered_contestants = {}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    contestant.age >= 18 && contestant.game_interests.include?(game.name)
  end

  def can_register?(contestant, game)
    interested_and_18?(contestant, game)
  end

  def register_contestant(contestant, game)
    if can_register?(contestant, game)
      return_value = contestant
    end
    if !@registered_contestants.has_key?(game.name)
      registered = []
      @registered_contestants[game.name] = registered
      registered << contestant
    elsif @registered_contestants.has_key?(game.name)
      @registered_contestants[game.name].push(contestant)
    end
  end
end