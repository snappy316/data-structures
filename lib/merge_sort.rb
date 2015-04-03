class Array
  def merge_sort
    if self.length <= 1
      return self
    else
      middle = (self.length / 2)
      left = self[0,middle].merge_sort
      right = self[middle,self.length].merge_sort
    end
    merge_sorting(left, right)
  end

  def merge_sorting(left, right)
    result = []
    while left.size > 0 && right.size > 0
      result << (left[0] <= right[0] ? left.shift : right.shift)
    end

    result += left + right
  end
end
