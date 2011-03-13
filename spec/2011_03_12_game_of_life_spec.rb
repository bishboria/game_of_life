require 'spec_helper'

describe "Game of Life" do
  context "Working out neighbours" do
    context "a cell located at position 1,1" do
      it "has a neighbour at 0,0" do
        neighbours_of(1,1).should include([0,0])
      end

      it "has a neighbour at 0,1" do
        neighbours_of(1,1).should include([0,1])
      end

      it "has a neighbour at 0,2" do
        neighbours_of(1,1).should include([0,2])
      end
      
      it "has a neighbour at 1,0" do
        neighbours_of(1,1).should include([1,0])
      end
      
      it "has a neighbour at 1,2" do
        neighbours_of(1,1).should include([1,2])
      end

      it "has a neighbour at 2,0" do
        neighbours_of(1,1).should include([2,0])
      end

      it "has a neighbour at 2,1" do
        neighbours_of(1,1).should include([2,1])
      end

      it "has a neighbour at 2,2" do
        neighbours_of(1,1).should include([2,2])
      end
    end

    context "a cell located at 1,2" do
      it "has neighbours located in the 8 cells surrounding it" do
        neighbours_of(1,2).should == [[0,1],[0,2],[0,3],[1,1],[1,3],[2,1],[2,2],[2,3]]
      end
    end
  end

  context "Counting shared neighbours" do
    context "with a cell at 1,1" do
      it "0,0 is counted once" do
        all_life = [[1,1]]
        counts = neighbour_counts(all_life)
        counts[[0,0]].should == 1
      end

      it "0,1 is counted once" do
        all_life = [[1,1]]
        counts = neighbour_counts(all_life)
        counts[[0,1]].should == 1
      end
    end

    context "with cells at 1,0 and 1,2" do
      it "0,1 is counted twice" do
        all_life = [[1,0],[1,2]]
        counts = neighbour_counts(all_life)
        counts[[0,1]].should == 2
      end

      it "1,1 is counted twice" do
        all_life = [[1,0],[1,2]]
        counts = neighbour_counts(all_life)
        counts[[1,1]].should == 2
      end

      it "2,1 is counted twice" do
        all_life = [[1,0],[1,2]]
        counts = neighbour_counts(all_life)
        counts[[2,1]].should == 2
      end
    end
  end
end
