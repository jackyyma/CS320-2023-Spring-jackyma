fun findDivisor(x, y) = if y <= x-1 then x mod y = 0 orelse findDivisor(x, y+1) else false;
fun isPrime(n):bool = if n = 2 then true else not(findDivisor(n,2));
