def prime_factors(n)
  (2...n).each do |k|
    return prime_factors(k) + prime_factors(n/k) if n % k == 0
  end
  return [n]
end

def consecutives(size)
  streak = 0
  (1..100000000).each do |num|
    if prime_factors(num).uniq.length == size
      streak += 1
    else
      streak = 0
    end

    if streak == size
      p "answer is #{num - size + 1}"
      p "through"
      p num
      break
    end
    p num if num % 10000 == 0
  end
  p "Look Harder!"
end

consecutives(4)
