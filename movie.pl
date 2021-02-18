
likes(sam,Movie):-
    horror(Movie);action(Movie).
likes(hridoy,Movie):-
    action(Movie),horror(Movie).

horror(ring).
horror(the_ring).
horror(the_exorcist).
horror(sinister).
horror(saw).

action(avengers).
action(tenet).
action(the_old_guard).
action(mulan).
action(mad_max).
action(saw).
