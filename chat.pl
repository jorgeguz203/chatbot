:- [propuestas, templates, kb].

chat:-writeln('Hola y bienvenido al chatbot de las elecciones, aqui podras encontrar informacion acerca de las propuestas
	de los candidatos a la presidencia Mexico 2018. Menciona el candidato y el sector que te interesa sbaer?'),
	readln(Input),
	chat(Input),!.
chat(Input):- Input == ['adios'],
	writeln('Adios, espero haber sido de gran ayuda'), !.
chat(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	substitute(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	chat(Input1), !.

chatMeade(X, R) :- meade(X), R = ['Favor de referise a', X, 'como meade'].

chatAnaya(X, R) :- anaya(X), R = ['Favor de referise a', X, 'como anaya'].

chatAmlo(X, R) :- amlo(X), R = ['Favor de referise a', X, 'como amlo'].

chatMargarita(X, R) :- margarita(X), R = ['Favor de referise a', X, 'como margarita'].

chatCandidato(X,R):- candidato(X) ->  R = ['No mencionase que sector te interesa saber de', X, '?' ];
		sector(X) -> R = ['No mencionaste al candidato que te interesa saber del sector' , X].
chatCandidato(X,R):- \+candidato(X), R = [X, 'no es un candidato o un sector'].

chatSectores(X, R):-  sector(X), R = ['No mencionaste al candidato que te interesa saber del sector', X ].
chatSectores(X, R):- \+sector(X), R = [X, 'no es un candidato o un sector'].

chatPropuesta(X,Y, R):- propuesta(X,Y,Z), R = [Z]. 
chatPropuesta(X,Y, R):- \+propuesta(X,Y,Z), R = ['No existe el candidato o el sector, puedes preguntar 
	de nuevo, por los candidatos o los sectores, tambien puede ser que el candidato no tiene propuestas
	de ese sector']. 

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :- 
	atom(S), 
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
	\+atom(S),
	match(Stim, Input),!.

substitute([], _, _, Resp, R):- append(Resp, [], R),!.

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatMeade(Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatAnaya(Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatAmlo(Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatMargarita(Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatCandidato(Atom, R).

substitute([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSector,
	chatSectores(Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	chatPropuesta(_, Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	length(Index, M), M > 0,
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	chatPropuesta(Atom, _, R),
	substitute(Index, Input, N, Resp, R).

substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), 
	append(R1, [], R),!.