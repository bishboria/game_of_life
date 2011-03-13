def neighbours_of row, column
  neighbours = []
  (row-1).upto(row+1) do |r|
    (column-1).upto(column+1) do |c|
      neighbours << [r,c]
    end
  end
  neighbours - [[row,column]]
end

def neighbour_counts all_life
  counts = Hash.new 0
  all_life.each do |row, column|
    neighbours_of(row, column).each do |neighbour|
      counts[neighbour] += 1
    end
  end
  counts
end

def alive_next_generation neighbour_count, alive_now=true
  return true if (neighbour_count == 2 and alive_now) or neighbour_count == 3
  false
end

def evolve all_life
  []
end
