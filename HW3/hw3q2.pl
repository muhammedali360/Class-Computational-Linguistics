%An FST that takes as input the pronunciation of a noun (represented using
%arpabet symbols as in the CMU pronunciation dictionary) concatenated with a
%representation of the plural morpheme and the end of word symbol # used by
%J&M, and outputs the pronunciation of the plural form of the noun, followed by
%the symbol #.

transition(1, S, 1, S) :-
    S \= eps,
    S \= '^'.

% appending "z" for voiced nonsibilant
transition(1, S, 2, S):-
        voiced(S),
        nonsibilant(S).

transition(2, '^', 3, eps).
transition(3, s, 4, z).
transition(4, '#', 1, '#').

% appending "s" for voiceless nonsibilant
transition(1, S, 5, S):-
        nonvoiced(S),
        nonsibilant(S).

transition(5, '^', 6, eps).
transition(6, s, 7, s).
transition(7, '#', 1, '#').

% appending "ah z" for sibilant
transition(1, S, 8, S):-
        sibilant(S).

transition(8, '^', 9, ih).
transition(9, s, 10, z).
transition(10, '#', 1, '#').

initial(1).
final(1).

voiced(aa).
voiced(ae).
voiced(ah).
voiced(ao).
voiced(aw).
voiced(ay).
voiced(b).
voiced(d).
voiced(dh).
voiced(eh).
voiced(er).
voiced(ey).
voiced(g).
voiced(iy).
voiced(jh).
voiced(l).
voiced(m).
voiced(n).
voiced(ng).
voiced(ow).
voiced(r).
voiced(th).
voiced(uh).
voiced(uw).
voiced(v).
voiced(w).
voiced(y).
voiced(z).
voiced(zh).

sibilant(ch).
sibilant(s).
sibilant(sh).
sibilant(jh).
sibilant(z).
sibilant(zh).

% once we have listed the sibilants,
% we can define what a nonsibilant is.
% here we can assume that the alphabet
% is the symbols in the arpabet, ^ and #.
% in summary, the following says that a
% symbols S corresponds to a nonsibilant
% if S is not ^, S is not #, S is not
% a sibilant, and S is not eps.

nonvoiced(S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(voiced(S)).

nonsibilant(S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(sibilant(S)).
