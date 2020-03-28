% we need to enforce subject-verb agreement
% (person and number need to match for NP and VP),
% and we need the right case
% P = person, S = singular (number), F = subjective or objectve 
% t = transitive, i = intransitive
s --> np(nom,P,S), vp(_,P,S).

% noun phrase
np(_, P, S) --> det, n(_, P, S).
np(F, P, S) --> pro(F, P, S).


% verb phrase
% VP with intransitive verb
% the VP gets Person and Number from the V
vp(i,P,S) --> v(i,P,S).

% VP with transitive verb
vp(t, P, S) --> v(t, P, S), np(acc, _, _).

% lexicon

det --> [the].

% pronoun, subjective case, third person singular
pro(nom,third,singular) --> [she].
pro(nom, first, singular) --> [i].
pro(nom, first, plural) --> [we].
pro(nom, third, plural) --> [they].

pro(acc, third, singular) --> [her].
pro(acc, third, plural) --> [them].

% here the underscore means that case can be
% anything. (dog is the same, whether it is
% nom or acc.)
n(_,third,singular) --> [dog].

n(_, third, plural) --> [dogs].

% verb features:
% t/i - transitive/instransitive
% P - person: first, second, third
% S - number: plural, singular

% the underscores here mean that Person can
% be anything, and Number can be anything
v(i,_,_) --> [arrived].

% here we need to ensure person/number is
% third singular
v(t, third, singular) --> [likes].

% person/number can be anything, except for
% third singular
v(t,first,_) --> [like].
v(t,second,_) --> [like].
v(t,third,plural) --> [like].

