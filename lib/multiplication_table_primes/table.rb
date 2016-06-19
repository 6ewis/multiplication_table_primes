require 'terminal-table'
require_relative './prime.rb'

class Table
  attr_accessor :size_of_primes_number

  def initialize(**params)
    @size_of_primes_number = params[:size_of_primes_number]
  end

  def draw_table
     first_column = first_row = Prime.first(@size_of_primes_number)
     #Adding the first row and the first column to the table
     index = 0
     rows = Prime.multiplication_table_primes(@size_of_primes_number).map do |item|
       new_item = [first_column[index],*item]
       index += 1
       new_item
     end.unshift([nil] + first_row) #We also make sure that the very first cell is empty since 1 is not a prime number

    table = Terminal::Table.new(title: "Multiplication Of Prime numbers",
                                rows: rows)
    print table
  end

end
