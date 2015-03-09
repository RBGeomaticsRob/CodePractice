#--------------
# CELL
#--------------

class Cell
  attr_accessor :mark
  def initialize(mark = nil)
    @mark = mark
  end
end


#--------------
# PLAYER
#--------------

class Player
  attr_reader :mark, :name
  def initialize(settings_hsh)
    @mark = settings_hsh.fetch(:mark)
    @name = settings_hsh.fetch(:name)
  end
end


#--------------
# BOARD
#--------------

class Board
  attr_accessor :grid
  def initialize(input = {}) # will throw nil if empty
    @grid = input.fetch(:grid, default_grid)
  end

  def mark_cell(row, column, player_mark)
    grid[row - 1][column - 1].mark = player_mark
  end

  def read_cell(row, column)
    grid[row-1][column-1].mark
  end

  private

  def default_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end
end



#--------------
# GAME
#--------------

class Game
  attr_reader :current_player
  def initialized(board = nil)
    @board = board
  end

  def play
  #Set Board
    @board = Board.new() if @board == nil
    @board_size = @board.grid.count
  #Set Player
    puts "Enter the name of player 1"
    @current_player = Player.new({:name => gets.chomp, :mark => "X"})
    puts "Enter the name of player 2"
    @other_player = Player.new({:name => gets.chomp, :mark => "O"})
  #Play Game
    game_play
  #Return result
    print_board
    if won?
      puts "#{current_player.name}, WINS!!!"
    else
      puts "It's a Draw!"
    end
  end

  def game_play
    while !won? && !draw? do
      switch_player
      print_board
      begin
        print "#{current_player.name} please enter the row you wish to play: >"
        @row = gets.chomp.to_i
        print "and now the column: >"
        @column = gets.chomp.to_i
        print "\n"
      end until @row.between?(1, @board_size) && @column.between?(1, @board_size) && (@board.read_cell(@row,@column)== nil)
      @board.mark_cell(@row,@column,@current_player.mark)
    end
  end


  def switch_player
    @current_player, @other_player = @other_player, @current_player
  end

  def won?
    counter = 1
    while counter < (@board_size + 1)
      return true if ((1..@board_size).inject(0) {|sum, x| @board.read_cell(counter,x) == @current_player.mark ? sum += 1 : sum}) == 3
      return true if ((1..@board_size).inject(0) {|sum, x| @board.read_cell(x,counter) == @current_player.mark ? sum += 1 : sum}) == 3
      return true if (@board.read_cell(1,1) == @current_player.mark) && (@board.read_cell(2,2) == @current_player.mark) && (@board.read_cell(3,3) == @current_player.mark)
      return true if (@board.read_cell(1,3) == @current_player.mark) && (@board.read_cell(2,2) == @current_player.mark) && (@board.read_cell(3,1) == @current_player.mark)
      counter += 1
    end
    false
  end

  def draw?
    counter = 1
    while counter < (@board_size + 1)
      (1..@board_size).each  do |x|
        return false if @board.read_cell(counter,x) == nil
      end
      counter += 1
    end
    true
  end

  def print_board
    counter = 1
    while counter < (@board_size + 1)
      (1..@board_size).each {|x| print "[#{@board.read_cell(counter,x) || " "}]"}
      print "\n"
      counter += 1
    end
    print "\n"
  end
end


game = Game.new
game.play
