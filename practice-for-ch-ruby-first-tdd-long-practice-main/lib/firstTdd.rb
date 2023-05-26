class Array 

    def my_uniq
        newarr = []
        self.each do |ele|
            newarr << ele unless newarr.include?(ele)
        end
        newarr
    end 

    def two_sum
        newarr = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx1 < idx2 && ele1 + ele2 == 0
                    newarr << [idx1, idx2]
                end
            end
        end
        newarr
    end

    def my_transpose
        newarr = []
        (0...self.length).each do |idx1|
            subarr = []
            (0...self.length).each do |idx2|
                subarr << self[idx2][idx1]
            end
            newarr << subarr
        end
        newarr
    end

    def stock_picker
        largest = 0
        max_cur_sum = 0
        firstidx = 0
        lastidx = 0 

        (0...self.length).each do |idx|
            max_cur_sum += self[idx]
            if largest < max_cur_sum
                largest = max_cur_sum
                lastidx = idx
            end 
            if max_cur_sum < 0
                max_cur_sum = 0
                firstidx = (idx + 1) unless idx == self.length - 1 
            end 
        end 
        return [firstidx, lastidx]
    end 
end 


