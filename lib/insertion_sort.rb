class Array
  def insertion_sort
    result = self.clone
    for index in 1..(result.length - 1)
      extracted = result[index]
      currentSorted = index - 1
      while currentSorted >= 0 and result[currentSorted] > extracted
        result[currentSorted+1] = result[currentSorted]
        currentSorted = currentSorted - 1
      end
      result[currentSorted+1] = extracted
    end
    result
  end
end
