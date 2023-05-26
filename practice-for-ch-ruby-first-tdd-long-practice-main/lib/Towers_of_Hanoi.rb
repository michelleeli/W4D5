class Hanoi
    attr_reader :discs, :towers, :max_height

    def initialize
        @discs = [8, 7 ,6, 5, 4, 3, 2, 1]
        @towers = [@discs,[],[]]
        @max_height = 8
    end 

    def valid_move?(idx)
        if idx < 0 || idx > 2
            return false
        end 
        if towers[idx].length == max_height
            raise "tower is full"
        end
        true 
    end 
    

end 