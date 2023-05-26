require 'firstTdd'
require 'rspec'
require 'spec_helper'

describe "Array#my_uniq" do
    let(:array) {[1, 2, 1, 3, 3]}

    it "works with an empty array" do
        expect([].my_uniq).to eq([])
    end 

    it "returns an array with duplicates removed" do
        expect(array.my_uniq).to eq([1,2,3])
    end  
end 

describe "Array#two_sum" do 
    let(:array) {[-1, 0, 2, -2, 1]}

    it "returns an array of pairs of positions where the elements at those positions sum to zero" do 
        expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "it returns elements in order of indices" do
        expect([2, -2, 3, -1, 1].two_sum).to eq([[0,1], [3,4]])
    end
end

describe "Array#my_transpose" do 
    let(:array) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}

      it "will convert between the row-oriented and column-oriented representations" do 
        expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
      end

end

