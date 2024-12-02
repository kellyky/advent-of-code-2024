class RedNosedReports

  def self.count_safe_reports(file)
    reports = File.read(file).split("\n")
    reports.count do |report|
      new(report).safe?
    end
  end

  private

  attr_reader :report

  def initialize(report)
    @report = report.split.map(&:to_i)
  end

  def all_increasing?
    report == report.sort
  end

  def all_decreasing?
    report == report.sort.reverse
  end

  def in_range?
    i = 0
    while i < report.size - 1
      distance = (report[i] - report[i + 1]).abs
      return false unless distance in 1..3

      i += 1
    end

    true
  end

  public

  def safe?
    (all_increasing? || all_decreasing?) && in_range?
  end

end
