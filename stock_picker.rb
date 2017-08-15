def stock_picker(arr)
  index = 0
  stock = {:profit => 0, :spread => [1, 2]}
  while index < arr.length
    min = arr[index]
    list = arr.slice(index + 1, arr.length)
    list.each { |val|
      if min < val
        if (val - min) > stock[:profit]
          stock[:profit] = val - min
          stock[:spread] = [arr.index(min), arr.index(val)]
        end
      end
    }
    index += 1
  end
  stock[:spread]
end
