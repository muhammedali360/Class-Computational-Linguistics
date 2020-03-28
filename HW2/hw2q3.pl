transition(1, Sym, 1, Sym).
transition(2, Sym, 2, Sym).

transition(1, p, 2, b).
transition(1, b, 2, p).

transition(1, k, 2, g).
transition(1, g, 2, k).

transition(1, s, 2, z).
transition(1, z, 2, s).

initial(1).
final(1).
final(2).
