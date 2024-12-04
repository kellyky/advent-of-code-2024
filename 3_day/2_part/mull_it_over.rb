class MullItOver

  DO = /do\(\).*/
  DONT = /don't\(\).*/
  NUMBER = /[1-9][0-9]?[0-9]?/

  # Borrowing Kewlers regexp
  RE = /((do|don't)\(\)|mul\((\d+),(\d+)\))/

  private

  attr_accessor :enabled, :enabled_mullings, :mullings

  def initialize(file)
    @file = File.read(file).chomp
    self.mullings = @file.scan(RE)
    self.enabled = true
  end

  public

  attr_reader :file, :mullings

  def sum_mullings
    require 'pry-byebug'

    mullings.map do |mulling_chonk|
      mulling = mulling_chonk.first

      # Set Disable / Enable state
      # toggle_enabled(mulling)
      if mulling.match?(DONT)
        self.enabled = false
        next
      elsif mulling.match?(DO)
        self.enabled = true
        next
      else
        next unless enabled

        mulling.scan(NUMBER).reduce do |x, y|
          x.to_i * y.to_i
        end
      end

    end.compact.sum
  end

end
