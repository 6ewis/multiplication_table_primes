require_relative './multiplication_table_primes/table'

class PrimeTable < Thor
  desc "multiply", "Output a symmetric two-dimensional multiplication table of the first N numbers (10 by default)"
  method_option :size, :aliases => "-s", :desc => "Draw the table with the given size - must be > 0"
  def multiply
    puts "You supplied the size: #{options[:size]}" if options[:size]
    p options[:size]
    size_of_primes_number = options[:size] ? options[:size].to_i : 10
    Table.new(size_of_primes_number: size_of_primes_number).draw_table
  end
end
