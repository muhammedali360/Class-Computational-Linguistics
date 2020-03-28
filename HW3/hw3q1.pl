% Second-level FST from the two-level morphology example in Jurafsky & Martin
%The output of this FST is the original word with a morpheme (or no visible
%morpheme) concatenated to it, but using only the canonical forms of the
%morphemes (i.e. without observing spelling rules or phonological rules).
%Produces the spelling of the inflected word.

transition(0, '#', 0, '#').
transition(0, '^', 0, eps).

% S below can be anything, except for #, ^, z, s, x, eps
% Pay close attention to how to interpret J&M's use of
% "other" and "#" in transitions.
% "other" means anything not used in the transitions.

% we use a variable S in the transition,
% and restrict its possible values by naming
% the symbols that S cannot be.

transition(0, S, 0, S) :-
    S \= '^',
    S \= z,
    S \= s,
    S \= x,
    S \= eps.

transition(0, z, 1, z).
transition(0, s, 1, s).
transition(0, x, 1, x).

transition(1, S, 0, S) :-
        S \= z,
        S \= s,
        S \= x,
        S \= '^',
        S \= eps.

transition(1, S, 1, S) :-
        S = z;
        S = s;
        S = x.

transition(1, '^', 2, eps).

transition(2, x, 1, x).
transition(2, z, 1, z).
transition(2, s, 5, s).
transition(2, eps, 3, e).
transition(2, S, 0, S):-
    S \= z,
    S \= s,
    S \= x,
    S \= eps.

transition(3, s, 4, s).

transition(4, '#', 0, '#').

transition(5, '^', 2, eps).
transition(5, s, 1, s).
transition(5, x, 1, x).
transition(5, z, 1, z).
transition(5, S, 0, S) :-
    S \= z,
    S \= s,
    S \= x,
    S \= '^',
    S \= eps.

initial(0).
final(0).
final(1).
final(2).
