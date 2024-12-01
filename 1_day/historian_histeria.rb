class HistorianHisteria

  private

  attr_reader :filepath, :left, :left

  def initialize(filepath)
    @filepath = filepath
    @left = []
    @right = []
    create_lists  # needed for both parts
  end

  def create_lists
    File.foreach(filepath) do |line|
      group_left, group_right = line.chomp.split

      left << group_left.to_i
      right << group_right.to_i
    end
  end

  public

  attr_reader :left, :right

  def total_distance
    sorted_left = left.sort
    sorted_right = right.sort

    sum = 0
    i = 0
    while i < left.size
      sum += (sorted_left[i] - sorted_right[i]).abs
      i += 1
    end
    sum
  end

  def similarity_score
    similarity = 0

    left.each do |number|
      score = number * right.count(number)
      similarity += score
    end

    similarity
  end

end
