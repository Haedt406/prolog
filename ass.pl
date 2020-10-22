people([office(_, 5), office(_, 4), office(_, 3), office(_, sally), office(_, jack)]).

layout(X) :- people(X), 
		member(office(hunter, K), X), K\=5, 
        member(office(laura, Y), X), Y\=1, 
		member(office(jim, Z), X), Z\=1; Z\=5;, adjacent(hunter, sally),
		member(office(sally, B), X), B > Y,
		member(office(jack, Q), X). 
