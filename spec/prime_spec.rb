require 'spec_helper'
require_relative '../lib/prime'

describe Prime do
  it '#sieve returns the N-th first primes number' do
    expect(described_class.first(10)).to eq([2,3,5,7,11,13,17,19,23,29])
  end


  it '#multiplication_table_primes returns a symmetric two-dimensional array of the ten first primes numbers' do
    expect(described_class.multiplication_table_primes(10)).to eq(
    [
      [  4,  6,  10,  14,  22,  26,  34,  38,  46,  58],
      [  6,  9,  15,  21,  33,  39,  51,  57,  69,  87],
      [ 10, 15,  25,  35,  55,  65,  85,  95, 115, 145],
      [ 14, 21,  35,  49,  77,  91, 119, 133, 161, 203],
      [ 22, 33,  55,  77, 121, 143, 187, 209, 253, 319],
      [ 26, 39,  65,  91, 143, 169, 221, 247, 299, 377],
      [ 34, 51,  85, 119, 187, 221, 289, 323, 391, 493],
      [ 38, 57,  95, 133, 209, 247, 323, 361, 437, 551],
      [ 46, 69, 115, 161, 253, 299, 391, 437, 529, 667],
      [ 58, 87, 145, 203, 319, 377, 493, 551, 667, 841]
     ]
    )
  end

end
