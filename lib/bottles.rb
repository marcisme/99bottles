class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, stop)
    start.downto(stop).map { |n| verse(n) }.join("\n")
  end

  def verse(num_bottles)
    if num_bottles > 2
"""#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles - 1} bottles of beer on the wall.
"""
    elsif num_bottles > 1
"""#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles - 1} bottle of beer on the wall.
"""
    elsif num_bottles > 0
"""1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"""
    else
"""No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"""
    end
  end
end
