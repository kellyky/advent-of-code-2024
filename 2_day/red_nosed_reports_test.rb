require 'minitest/autorun'
require_relative 'red_nosed_reports'

describe RedNosedReports do

  describe 'Part 1 with sample data' do
    let(:file) { 'sample-input.txt' }

    # Part 1
    it 'returns 2' do
      report_count = RedNosedReports.count_safe_reports(file)
      assert_equal 2, report_count
    end
  end

  describe 'with "real" data' do
    let(:file) { 'input.txt' }

    # Part 1
    it 'returns 432' do
      report_count = RedNosedReports.count_safe_reports(file)
      assert_equal 432, report_count
    end
  end

end
