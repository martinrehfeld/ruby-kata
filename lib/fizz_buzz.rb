class FizzBuzz

  def initialize
    @results = (1..100).map { |i|
      val = ''
      val << 'Fizz' if i % 3 == 0
      val << 'Buzz' if i % 5 == 0
      val = i       if val.empty?
      val
    }
  end

  def to_a
    @results
  end

  def to_s
    @results.join(' ')
  end

end
