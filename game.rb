require "./player"
require "./question"

class Game

  attr_accessor :player1, :player2, :active

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @active = @player1
  end

  def switch
    if self.active == self.player1
      self.active = self.player2
    elsif self.active == self.player2
      self.active = self.player1
    end
  end

  def run
    q = Question.new
    puts "#{self.active.name}: What does #{q.first_num} plus #{q.second_num} equal?"
    print "> "
    answer = gets.chomp.to_i
    if q.ans != answer
      puts "Seriously? No!"
      self.active.lose
      puts "P1: #{self.player1.life}/3 vs P2: #{self.player2.life}/3"
      

      if self.player1.life == 0
        puts "Player 2 wins with a score of #{self.player2.life}/3"
        puts "----- Game Over -----"
        puts "Good bye!"
        exit(0)
      elsif self.player2.life == 0
        puts "Player 1 wins with a score of #{self.player1.life}/3"
        puts "----- Game Over -----"
        puts "Good bye!"
        exit(0)
      end

      
      puts "----- New Turn -----"
      switch
      run
    else
      puts "YES! You are correct."
      puts "P1: #{self.player1.life}/3 vs P2: #{self.player2.life}/3"
      puts "----- New Turn -----"
      switch
      run
    end
  end

end
