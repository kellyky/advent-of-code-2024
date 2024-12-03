class MullItOver

  NUMBER = /[1-9][0-9]*[0-9]*/
  MULLINGS_REGEX = /mul\(#{NUMBER},#{NUMBER}\)/

  private

  attr_writer :mullings

  def initialize(file)
    @file = File.read(file).chomp
    self.mullings = @file.scan(MULLINGS_REGEX)
  end

  public

  attr_reader :file, :mullings

  def sum_mullings
    mullings.sum do |mulling|
      x, y = mulling.scan(NUMBER).map(&:to_i)
      x * y
    end
  end

end
