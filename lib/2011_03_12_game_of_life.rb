def neighbours_of row, column
  neighbours = []
  (row-1).upto(row+1) do |r|
    (column-1).upto(column+1) do |c|
      neighbours << [r,c]
    end
  end
  neighbours - [[row,column]]
end
