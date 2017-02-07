def sum_to(n)
  return nil if n < 0
  return 1 if n == 1
  n + sum_to(n-1)
end
p

def add_numbers(array)
  return array.first if array.length ==  1
  return nil if array.length == 0

  array.pop + add_numbers(array)
end



def gamma_fnc(num)
  factorial(num-1)
end


def factorial(num)
  return nil if num < 0
  return 1 if num == 0 || num == 1

  num * factorial(num-1)
end
 # Test Cases
p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040
