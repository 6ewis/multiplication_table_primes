class Prime
  class << self
    def first(limit)
      (2..Float::INFINITY).lazy.select { |i| prime? i }.first(limit)
    end

    def multiplication_table_primes(limit)
      list_primes = first(limit)
      list_primes.product(list_primes).map { |arr| arr.reduce(:*) }.each_slice(limit).to_a
    end

    private_class_method
    # The sieve of Eratosthenes is a simple, ancient algorithm
    # for finding all prime numbers up to any given limit
    #   Create an array from n=0 to n = max
    #   loop until it reaches the square root of max
    #     Starting at n=2, delete every multiple of 2 from the array.
    #     Repeat for n+1, delete every multiple of n+1
    #   remove nils from the array and you got yourself a list of primes
    def sieve(max)
      array = [nil, nil] + (2..max).to_a
      (2..Math.sqrt(max)).each do |i|
        (i*i).step(max, i) { |j| array[j] = nil} if array[i]
      end
      array.compact
    end

    def prime?(num)
      sieve(num).include?(num)
    end
  end
end
