module Math 
  class<< self
    def sqrt_range(range)
      min_sqrt = Math.sqrt(range.min)
      if min_sqrt % 1 != 0
        min_sqrt = min_sqrt.ceil.to_i 
      end 
      max_sqrt = Math.sqrt(range.max)
      if max_sqrt % 1 != 0
        max_sqrt = max_sqrt.floor.to_i
      end
      (min_sqrt.to_i..max_sqrt.to_i)
    end
  end
end
