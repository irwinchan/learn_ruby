def add(numb1, numb2)
  numb1 + numb2
end

def subtract(numb1, numb2)
  numb1 - numb2
end

def sum(array)
  if array == []
    return 0
  end

  array.reduce(:+)
end

def multiply(*args)
  args.reduce(:*)
end

def factorial(numb)
  if numb == 0
    return 0
  end

  (1..numb).reduce(:*)
end