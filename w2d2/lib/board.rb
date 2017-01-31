class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.length.times do |i|
      if i == 6 || i == 13
        @cups[i] = []
      else
        @cups[i] = [:stone,:stone,:stone,:stone]
      end
    end
    @cups
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 13 || start_pos <= 0
    raise
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    if current_player_name = @name1
      oppenents_cup = 13
    else
      oppenents_cup = 6
    end

    current_pos = start_pos
    until stones.empty?
      current_pos += 1
      current_pos = 0 if current_pos > 13
        unless oppenents_cup == current_pos
          @cups[current_pos] << :stone
          stones.pop
        end

    end
    render

    next_turn(current_pos)


  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns

    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    # print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    # puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    # print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    # puts ""
    # puts ""
  end

  def one_side_empty?
    @cups.take(6).all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player1_c = @cups[6].count
    player2_c = @cups[13].count

    if player1_c == player2_c
      :draw
    else
      player1_c > player2_c ? @name1 : @name2
    end
  end
end
