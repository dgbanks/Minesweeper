# require "tiles"

class Board
  def initialize
    @grid = self.new_board
    @grid = self.populate_bombs
    @bombs = []
  end

  def new_board
    Array.new(9) {Array.new([])}
  end

  def populate_bombs
    10.times do
      @bombs << [(rand(0..8)), (rand(0..8))]
    end
    @grid.map do |row|
      row.map {|tile| tile.bombness = true if @bombs.include?(tile.position) }
    end
    @grid
  end

  def adjacency
    @bombs.each do |pos|
  end

end


board = Board.new
p board.populate_bombs
