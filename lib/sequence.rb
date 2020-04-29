class Sequence

  def initialize(arg)
    @arg = arg.to_i
  end

  def to_s()
    @arg.to_s
  end

  def next
    new_array = []
    i = 0
    array = @arg.to_s.split('')
    number = array[0]

    array.each_with_index do |n|
      if n == number
        i += 1
      else
        new_array << i
        new_array << number.to_i
        number = n
      end
    end

    new_array << i
    new_array << number.to_i

    @arg = new_array.join('')
    self
  end
end