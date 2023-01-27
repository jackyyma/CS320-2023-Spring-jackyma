fun str2list [] = [] | str2list [x] = [x] | str2list(x::xs) = (str2list xs) @ [x];
fun stringrev(cs: string): string = implode(str2list(explode(cs)));
