% sentence
% the subject NP must have nominative case
s --> np(nom), vp.

% noun phrase
% the NP gets case information from its head
% (either the pronoun or the noun)
np(F) --> pro(F).
np(F) --> det, n(F).

% verb phrase with intransitive verb
vp --> v.

% verb phrase with transitive verb
% the object NP must have accusative case
vp --> v, np(acc).

% lexicon
det --> [the].
% the underscores below can match anything,
% so these nouns could be used in nominative
% or accusative NPs
n(_) --> [dog].
n(_) --> [dogs].
pro(nom) --> [she].
pro(acc) --> [her].
pro(nom) --> [they].
pro(acc) --> [them].
pro(nom) --> [i].
pro(nom) --> [we].
v --> [arrived].
v --> [like].
v --> [likes].
