require_relative 'lib/00_tree_node.rb'

class KnightPathFinder

  def initialize(pos)
    @pos = pos
    @board = Array.new(8) { Array.new(8) }
    @starting_position = pos
    @visited_positions = [pos]
  end

  def new_move_positions(pos)
    valid_mvs = KnightPathFinder.valid_moves(pos)
    mvs = valid_mvs.select { |move| !@visited_positions.include?(move)}
    @visited_positions << mvs
  end

  def self.valid_moves(pos)
    res = Array.new(8) { Array.new }
    ex = [2, -2, -1, 1,-2, 2, 1, -1]
    why = [1, 1, 2, 2,-1, -1, -2, -2]

    res.each_index do |i|
      res[i] << [ex[i]+pos[0], why[i] + pos[1]]
    end

    res.select {|pair| pair.include?()}
  end


end
