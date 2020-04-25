# frozen_string_literal: true

class Test
  def maxDifference(arr)
    max_diff = arr[1] - arr[0]

    arr.each do |num|
      arr[0..arr.find_index(num)].each do |i|
        if (arr[arr.find_index(num)] - i) > max_diff
          max_diff = arr[arr.find_index(num)] - i
        end
      end
    end
    max_diff
  end

  def breakPalindrome(str)
    str_arr = str.split('')
    return 'IMPOSSIBLE' if str_arr.uniq.length == 1

    arr = str.split('')
    arr.each do |char|
      if char != 'a'
        arr[arr.find_index(char)] = 'a'
        break
      end
    end

    if arr.uniq.length == 1
      'IMPOSSIBLE'
    else
      arr.join('')
    end
  end
end
