require 'terminal-table'
require_relative './prime.rb'

class Table
  attr_accessor :size_of_primes_number

  def initialize(**params)
    @size_of_primes_number = params[:size_of_primes_number]
  end

  def draw_table
     first_column = first_row = Prime.first(@size_of_primes_number)
     #We make sure that the first cell is empty since 1 is not a prime number
     #adding the first row and the first column to the table
     index = 0
     rows = Prime.multiplication_table_primes(@size_of_primes_number).map do |item|
       item.unshift(first_column[index])
       index += 1
       item
     end.unshift(first_row.unshift(nil))

    table = Terminal::Table.new(title: "Multiplication Of Prime numbers",
                                rows: rows)
    print table
  end

end
