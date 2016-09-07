class PrimeFactor
  def initialize(number)
    @number = number
  end

  def prime_factors
    result_list = []
    current_number = @number

    while prime_number = prime_numbers.shift
      div, mod = current_number.divmod(prime_number)
      if mod == 0
        result_list << prime_number
        current_number = div
        prime_numbers.unshift(prime_number)
      end
    end

    result_list
  end

  private

  def prime_numbers
    @primes ||= begin
      prime_candidates = *(2..Math.sqrt(@number))
      primes = []

      while prime_number = prime_candidates.shift
        primes << prime_number
        prime_candidates.reject! { |n| n % prime_number == 0 }
      end

      primes
    end
  end
end
