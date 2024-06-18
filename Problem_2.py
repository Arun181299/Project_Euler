def fibb_even_sum(limit):
    a,b = 0,1
    even_sum = 0
    while a <= limit:
      if a % 2 == 0:
        even_sum += a
      a, b = b, b + a
    return even_sum

limit =  4000000
print(fibb_even_sum(limit))
