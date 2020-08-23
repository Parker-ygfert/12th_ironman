# https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby

=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
=end

def solution(number)
  [*1...number].select {|n| (n % 3 == 0) or (n % 5 == 0)}.sum
end