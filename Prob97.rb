def mod_exp(base, exponent)
  return 1 if exponent == 0
  half = mod_exp(base, exponent/2)
  if exponent % 2 == 0
    return (half * half) % 10_000_000_000
  else
    return (base * half * half) % 10_000_000_000
  end
end
