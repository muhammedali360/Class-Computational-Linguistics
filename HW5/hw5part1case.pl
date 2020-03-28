% the sentence rule
% the subject should have nominative case
s --> np_nom, vp.
% using _s to represent that it is singular
s --> np_nom_s, vp_s.

% noun phrase rules
np_nom_s --> det, n_s.
np_nom_s --> pro_nom_s.

np_nom --> det, n.
np_nom --> pro_nom.
np_acc --> det, n.
np_acc --> det, n_s.
np_acc --> pro_acc.

% verb phrase with intransitive verb
%using _i to represent intransitive and _t to represent transitive
vp --> v_i.
vp_s --> v_i.

% verb phrase with transitive verb
% the object should have accusative case
vp --> v_t, np_acc.
vp_s --> v_t_s, np_acc.

% lexical rules
det --> [the].
n_s --> [dog].
n --> [dogs].
pro_nom_s --> [she].
pro_acc --> [her].
pro_nom --> [they].
pro_acc --> [them].
pro_nom --> [i].
pro_nom --> [we].
v_i --> [arrived].
v_t --> [like].
v_t_s --> [likes].
