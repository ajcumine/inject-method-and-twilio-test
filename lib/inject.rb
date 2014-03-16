class Array

  def my_inject(arg, &block)
    array = ([arg] << self).flatten
    result = array[0]
    array.each {|n| result = yield(result, n)}
    result
  end

end