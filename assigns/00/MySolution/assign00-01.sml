fun fact(x: int): int = if x > 0 then x * fact(x-1) else 1;
fact 21;
uncaught exception Overflow [overflow]
  raised at: <file stdIn>
