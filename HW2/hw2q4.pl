transition(1, Sym, 1, Sym) :- not(member(Sym,[s])).
transition(2, Sym, 1, Sym) :- not(member(Sym,[s])).

transition(1, s, 2, s).
transition(2, s, 2, s).

transition(1, p, 3, p_h).
transition(1, t, 3, t_h).
transition(1, k, 3, k_h).
transition(3, Sym, 1, Sym):- member(Sym,[aa1,ae1,ah1,ao1,aw1,ay1,eh1,er1,ey1,ih1,iy1,ow1,oy1,uh1,uw1]).

initial(1).
final(1).
final(2).