class Array

  def my_inject(arg = nil, &block)
    array = ([arg] << self).flatten.compact
    result = array[0]
    array.each {|n| result = yield(result, n)}
    result
  end

end