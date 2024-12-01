require 'csv'

class HistorianHisteria

  private

  attr_reader :filepath, :left, :left
  attr_writer :sum

  def initialize(filepath)
    @filepath = filepath
    @left = []
    @right = []
    create_lists

    self.sum = 0
  end

  def create_lists
    File.foreach(filepath) do |line|
      group_left, group_right = line.chomp.split

      left << group_left.to_i
      right << group_right.to_i
    end
  end

  public

  attr_reader :left, :right, :sum

  def total_distance
    sorted_left = left.sort
    sorted_right = right.sort

    i = 0
    while i < left.size
      self.sum += (sorted_left[i] - sorted_right[i]).abs
      i += 1
    end

    sum
  end

end
