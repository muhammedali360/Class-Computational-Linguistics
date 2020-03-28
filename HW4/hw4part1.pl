:- use_module(library(tabling)).
:- table s/2.
:- table np/2.
:- table vp/2.
:- table pp/2.

% enter your rules

s --> np, vp.
np --> np, pp.
np --> det, n.
vp --> vp, pp.
vp --> v, np.
pp --> p, np.


% enter your lexical rules

det --> [the].
n --> [dogs].
n --> [cats].
n --> [garden].
p --> [in].
v --> [chased].
