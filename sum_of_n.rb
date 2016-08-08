def n_sum(num)
  # your code here
    return (1..num).reduce(:+)
end
a=gets.to_i
puts n_sum(a)
