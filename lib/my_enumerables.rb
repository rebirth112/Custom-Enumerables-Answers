module Enumerable
  #Your code goes here
  #self is the array that's fed in 
  #yield refers to the block that's being executed
  def my_each
    i = 0
    while i < length
      yield self[i]
      i+=1
    end
    return self
  end

  def my_each_with_index
    i = 0
    while i < length
    yield self[i], i
    i+=1
    end
    return self
  end

  def my_all?
    i = 0
    while i < length
        if yield self[i]
            if i == length - 1
                return true
            else
                i+=1
            end
        else
            return false
        end
    end
  end

  def my_any?
    i = 0
    while i < length
        if i == length - 1
            if yield self[i]
                return true
            else
                return false
            end
        elsif yield self[i]
            return true
        else
            i+=1
        end
    end
  end

  def my_none?
    i = 0
    while i < length
    if i == length - 1
        if yield self[i]
            return false
        else
            return true
        end
    elsif yield self[i]
        return false
    else
        i+=1
    end
  end
  end

  def my_count
    i = 0
    x = 0
    if block_given?
      while i < length
        if yield self[i]
          x += 1
          i += 1
        else
          i += 1
        end
      end
    else
      return length
    end
    return x
  end

  def my_map
    returned_array = []
    i = 0
    while i < length
      returned_array.append(yield self[i])
      i += 1
    end
  return returned_array
  end

  def my_inject(num)
    i = 0
    while i < length
      num = yield num, self[i]
      i+=1
    end
    return num
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

end
