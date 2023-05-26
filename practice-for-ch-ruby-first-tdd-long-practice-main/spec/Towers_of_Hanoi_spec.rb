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

    describe '#stack' do 
        it "should accept a start position and end position as args" do
            expect{game.stack(0, 1)}.to_not raise_error
        end

        it "should remove the last disc from the start pos to the end pos" do
            game.stack(0,1)
            expect(game.towers).to eq([[8, 7, 6, 5, 4, 3, 2],[1],[]])
        end
    end

    describe '#get_index' do
        it "should print 'enter a start and end position separated with a space like 0 1'" do
        input = double("0 1\n", :chomp=>"0 1")
        allow

        end


    end


end 