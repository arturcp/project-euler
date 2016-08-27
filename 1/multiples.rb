class Multiples
  def initialize(*multiples)
    @multiples = multiples.to_a.sort
  end

  def sum(below:)
    (@multiples[0]..below - 1)
      .select(&method(:multiple?))
      .reduce(0, &:+)
  end

  private

  def multiple?(number)
    @multiples.reduce(false) { |status, n| status ||= number % n == 0 }
  end
end
