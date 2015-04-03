# class Array
  def merge_sort(list)
    if list.length <= 1
      return list
    else
      middle = (list.length / 2)
      left = merge_sort(list[0,middle])
      right = merge_sort(list[middle,list.length])
    end
    merge_sorting(left, right)
  end

  def merge_sorting(left, right)
    result = []
    return right if left.nil?
    return left if right.nil?
    while left.size > 0 && right.size > 0
      result << (left[0] <= right[0] ? left.shift : right.shift)
    end

    result += left + right
  end
# end

test = [3, 44, 38, 5, 47, 15, 36, 26, 27, 2, 46, 4, 19, 50, 48]
result = merge_sort(test)
puts "--------"
print "RESULT: "
puts result.inspect
