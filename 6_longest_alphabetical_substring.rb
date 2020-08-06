# https://www.codewars.com/kata/5a7f58c00025e917f30000f1/train/ruby

=begin
  Instructions
  Find the longest substring in alphabetical order.
  Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
  There are tests with strings up to 10 000 characters long so your code will need to be efficient.
  The input will only consist of lowercase characters and will be at least one letter long.
  If there are multiple solutions, return the one that appears first.
=end



def longest(s)
  p s
end

longest('asd')  # => 'as'
longest('nab')  # => 'ab'
longest('abcdeapbcdef')  # => 'abcde'
longest('asdfaaaabbbbcttavvfffffdf')  # => 'aaaabbbbctt'
longest('asdfbyfgiklag')  # => 'fgikl'
longest('z')  # => 'z'
longest('zyba')  # => 'z'