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
