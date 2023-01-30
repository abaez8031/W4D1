class KnightPathFinder

  def self.valid_moves(pos)
#returns all the possible valid moves [[],[],[],[]]
  moves = [
    [1,2],
    [2,1],
    [2,-1],
    [1,-2],
    [-1,-2],
    [-2,-1],
    [-2,1],
    [-1,2]
  ] 
  current_pos = @considered_positions[-1]
  res =[]
    moves.each do |pos|
      val_row = pos[0]
      val_col = pos[1]
      
      current_row = current_pos[0]
      current_col = current_pos[1]

      if  ((val_row + current_row >= 0 ) && (val_row + current_row <=7 ))  &&  ((val_col + current_col >= 0)  && (val_col + current_col <=7) )
        res << [val_row+ current_row , val_col + current_col]
      end
    end
  return res 
  end


  def initialize(value)
    @value = value
    @considered_positions = [value]#ex 
  end

  def new_move_positions(pos)
      moves = self.valid_moves(pos) #[]
      filtered_moves =[]
      
      moves.each do |move|
        if !considered_positions.include?(move)
          filtered_moves << move 
        end
      end
      @considered_positions << filtered_moves
      filtered_moves
  end




end