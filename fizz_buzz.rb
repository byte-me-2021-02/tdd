# input -> number
# output -> number
  # unless it's divisible by 3 -> 'fizz'
  # unless it's divisible by 5 -> 'buzz'
  # unless it's divisible by 5 and 3 -> 'fizz buzz'


# # inputs    outputs
# 1           1
# 2           2
# 3           fizz
# 4           4
# 5           buzz
# 6           fizz
# 7           7
# 8           8
# 9           fizz
# 10          buzz
# 11          11
# 12          fizz
# 13          13
# 14          14
# 15          fizz buzz


class FizzBuzz
  def output(number)
    return 'fizz buzz' if number % 3 == 0 && number % 5 == 0      
    return 'fizz' if number % 3 == 0      
    return 'buzz' if number % 5 == 0
    return number
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 when given 2' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(2)
      expect(result).to eq(2)
    end
    it 'should return \'fizz\' when given 3' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 5' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz\' when given 6' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 10' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(10)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz buzz\' when given 15' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(15)
      expect(result).to eq('fizz buzz')
    end
    it 'should return \'fizz\' when given 156' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(156)
      expect(result).to eq('fizz')
    end
  end
end