people([office(_, 5), office(_, 4), office(_, 3), office(_, 2), office(_, 1)]).
adjacent(J,L,A) :- (J \= A-1, J \= A+1, J \= L+1, J \= L-1). 
layout(X) :- people(X), 
	member(office(hunter, H), X), H\=5, 
        member(office(laura, L), X), L\=1, 
	member(office(jim, J), X), J\=1, J\=5, adjacent(J,L,A),
	member(office(sally, S), X), S > L,
	member(office(jack, A), X). 
