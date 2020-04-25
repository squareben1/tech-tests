# frozen_string_literal: true

class Test
  def maxDifference(arr)
    max_diff = arr[1] - arr[0]

    arr.each do |num|
      index = arr.find_index(num)
      arr[0..index].each do |i|
        if (arr[index] - i) > max_diff
          max_diff = arr[index] - i
        end
      end
    end
    max_diff
  end

  def breakPalindrome(str)
    arr = str.split('')

    arr.each do |char|
      if char != 'a'
        arr[arr.find_index(char)] = 'a'
        break
      end
    end
    uniq_check(arr)
  end
end

def uniq_check(arr)
  if arr.uniq.length == 1
    'IMPOSSIBLE'
  else
    arr.join('')
  end
end
