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

    def stack(indices)
        start_idx, end_idx = indices
        towers[end_idx] << towers[start_idx].pop
    end

    def get_index 
        p "enter a start and end position separated with a space like 0 1"
        gets.chomp.split(" ").map { |num| num.to_i}
    end 

    def play
        until win?
            idx = self.get_index
            self.stack(idx) if self.valid_move?(idx)
        end 
    end 

    
end 