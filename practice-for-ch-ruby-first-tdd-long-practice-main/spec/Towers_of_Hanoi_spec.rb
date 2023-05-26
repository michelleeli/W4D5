require 'Towers_of_Hanoi'

describe "Hanoi" do 
    let(:game) {Hanoi.new}

    describe "#initialize" do
        it "should set @discs to array of numbers sorted from 8 to 1" do 
            expect(game.discs).to eq([8, 7, 6, 5, 4, 3, 2, 1])
        end 

        it "should set @towers to a 2d array with @discs as first element" do 
            expect(game.towers).to eq([[8, 7, 6, 5, 4, 3, 2, 1],[],[]])
        end 

        it "should set @max_height" do 
            expect(game.max_height).to eq(8)
        end 
    end 

    describe '#valid_move?' do
        it "should accept a position as arg" do 
            expect {game.valid_move?(1)}.to_not raise_error
            expect {game.valid_move?(2)}.to_not raise_error
        end 

        it "should raise error if current tower length is greater than max_height" do 
            expect {game.valid_move?(0)}.to raise_error("tower is full")
        end 

        it "should return a boolean indicating whether move is valid" do 
            expect(game.valid_move?(-1)).to eq(false)
            expect(game.valid_move?(4)).to eq(false)
            expect(game.valid_move?(2)).to eq(true)
        end 

             
    end 

end 