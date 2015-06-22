def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(sum_this)
  sum_this.inject(0) { |sum, x| sum + x }
  sum_this.reduce(0) { |sum, x| sum + x }
  sum_this.reduce(:+)
end