class Player
  @@number_of_players = 0

  attr_reader :score, :short, :long

  def initialize
    @@number_of_players +=1
    self.short = "P#{@@number_of_players}"
    self.long = "Player#{@@number_of_players}"
    self.score = 3
  end

  def loose_points
    self.score -= 1
  end

  def final_score
    "#{score}/3"
  end

  protected
  attr_writer :score, :short, :long
end