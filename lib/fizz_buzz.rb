class FizzBuzz

  def initialize
    @results = (1..100).map { |i|
      if i % 3 == 0 && i % 5 == 0 then 'FizzBuzz'
      elsif i % 3 == 0 then 'Fizz'
      elsif i % 5 == 0 then 'Buzz'
      else i
      end
    }
  end

  def to_a
    @results
  end

  def to_s
    @results.join(' ')
  end

end
