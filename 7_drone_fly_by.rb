# https://www.codewars.com/kata/58356a94f8358058f30004b5/ruby

=begin
The other day I saw an amazing video where a guy hacked some wifi controlled lightbulbs by flying a drone past them. Brilliant.

In this kata we will recreate that stunt... sort of.

You will be given two strings: lamps and drone. lamps represents a row of lamps, currently off, each represented by x. When these lamps are on, they should be represented by o.

The drone string represents the position of the drone T (any better suggestion for character??) and its flight path up until this point =. The drone always flies left to right, and always begins at the start of the row of lamps. Anywhere the drone has flown, including its current position, will result in the lamp at that position switching on.

Return the resulting lamps string. See example tests for more clarity.
=end



def fly_by(lamps, drone)
  left = lamps[drone.length..-1]
  result = lamps.replace("o" * drone.length)
  p result + left
end



fly_by('xxxxxx', '====T')  # 'ooooox'
fly_by('xxxxxxxxx', '==T')  # 'oooxxxxxx'
fly_by('xxxxxxxxxxxxxxx', '=========T')  # 'ooooooooooxxxxx'