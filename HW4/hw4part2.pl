:- use_module(library(tabling)).
:- table s/3.
:- table np/3.
:- table vp/3.
:- table pp/3.

% enter your rules

s(s(NP, VP)) --> np(NP), vp(VP).
np(np(NP, PP)) --> np(NP), pp(PP).
np(np(DET, N)) --> det(DET), n(N).
vp(vp(VP, PP)) --> vp(VP), pp(PP).
vp(vp(V, NP)) --> v(V), np(NP).
pp(pp(P, NP)) --> p(P), np(NP).

% enter your lexical rules

det(det(the)) --> [the].
n(n(dogs)) --> [dogs].
n(n(cats)) --> [cats].
n(n(garden)) --> [garden].
p(p(in)) --> [in].
v(v(chased)) --> [chased].



%TEMP RULES FOR PART 3:
%p(p(behind)) --> [behind].
%n(n(fence)) --> [fence].
%n(n(garden)) --> [garden].