require './player'
require './question'

class Game
  #@@ to denote the variable as class level and add a getter method
  @@player = 0

  def start_game(players)
    puts "------- NEW TURN --------"
    math_question = Question.new
    puts"#{players[0].long}: #{math_question.print_question}"
    print "> "
    # Going to read the contents of files passed in through ARGV.
    result = $stdin.gets.chomp
    #to_i Returns the result of interpreting leading characters in str as an integer
    if result.to_i == math_question.number1 + math_question.number2
      puts "#{players[0].long}: CORRECT! great Job."
    else
      players[0].loose_points
      puts "#{players[0].long}: INCORRECT! try again"
    end

    if players[0].score == 0
      puts "#{players[1].long} Congratulation, your score is  #{players[1].final_score} ----- GAME OVER -----"
    else
      players.reverse!
      "#{players[1].short}: #{players[1].final_score} VS #{players[0].short}: #{players[0].final_score}"
      start_game(players)
    end
  end
end