class Fibonacci
  attr_reader :terms

  def initialize(max:)
    @terms = generate(max: max)
  end

  def generate(current_term: 1, max:, list: [])
    if current_term == 1 || current_term == 2
      list << 1
    else
      value = list[-1] + list[-2]
      return list if value > max

      list << value
    end

    generate(current_term: current_term + 1, max: max, list: list)
  end

  def sum
    @sum ||= @terms.reduce(0) { |sum, term| sum += term.even? ? term : 0  }
  end
end
