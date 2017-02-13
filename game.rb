class MathGame

  def initialize
    @turn = 1
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def generateQuestion()

  end

  def generateRandomNumber 
    1 + rand(20)
  end

  def runGame
    while true
      if @turn == 1
        print 'Player1: '
      else
        print 'Player2: '
      end



      value1 = generateRandomNumber
      value2 = generateRandomNumber
      correctAnswer = value1 + value2
      puts correctAnswer
      print "What does #{value1} plus #{value2} equal?"
      answer = gets.chomp

      if (answer.to_i == correctAnswer)
        puts "Correct! Switching Players"
        switchTurn
      else
        loseLife
        if (!@player1.isAlive || !@player2.isAlive)
          endGame
          break
        end
        switchTurn
      end



    end

      
  end

  def switchTurn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end

  def loseLife
    if @turn == 1
      puts "Wrong! Player #{@player1.id} Lose Life"
      @player1.loseLife
    else
      puts "Wrong! Player #{@player2.id} Lose Life"
      @player2.loseLife
    end



    puts "P1 #{@player1.getLife}/3 vs P2 #{@player2.getLife}/3"
  end

  def endGame
    if @turn == 1
      puts 'Player 2 Wins'
    else
      puts 'Player 1 Wins'
    end
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end

  def startGame
    puts 'Welcome to TwO-O-Player Math Game!'
    runGame
  end

end