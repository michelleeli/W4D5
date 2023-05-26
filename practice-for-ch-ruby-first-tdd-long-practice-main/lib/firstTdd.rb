# ## `uniq`

# Array has a `uniq` method that removes duplicates from an array. It returns the
# unique elements in the order in which they first appeared:

# ```ruby
# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# ```

# Write your own version of this method called `my_uniq`; it should take in an
# array and return a new array.

class Array 

    def my_uniq
        newarr = []
        self.each do |ele|
            newarr << ele unless newarr.include?(ele)
        end
        newarr
    end 

end 

## `two_sum`

# Write a new `Array#two_sum` method that finds all pairs of positions where the
# elements at those positions sum to zero.

# **N.B.:** Ordering matters. You want each of the pairs to be sorted with the
# smaller index before the bigger index. You then want the array of pairs to be
# sorted "dictionary-wise":

# ```ruby
# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
# ```

