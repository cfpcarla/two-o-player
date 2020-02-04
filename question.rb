class Question

  attr_reader :number1, :number2
  def initialize
    @number1 = rand(21)
    @number2 = rand(21)
  end

  def print_question
    "What does #{number1} plus #{number2} equals?"
  end

end