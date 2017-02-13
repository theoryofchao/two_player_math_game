class Player

  attr_reader :id

  def initialize(id)
    @playerid = id
    @life = 3
  end

  def loseLife
    @life -= 1
  end

  def getLife
    @life
  end

  def isAlive
    if(@life > 0)
      return true
    else
      return false
    end
  end
end