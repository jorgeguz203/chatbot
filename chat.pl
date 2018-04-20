:- [propuestas, templates, kb].

chat:-	writeln('Hola y bienvenido al chatbot de las elecciones, aqui podras encontrar informacion acerca de las propuestas
	de los candidatos a la presidencia Mexico 2018. Quieres hablar de un candidato en especial o de algun sector en especial?'),
	readln(Input),
	chat(Input),!.
chat(Input):- Input == ['adios'],
	writeln('Adios, espero haber sido de gran ayuda'), !.
chat(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	chat(Input1), !.


chatCandidato(X,R):- candidato(X) ->  R = ['Que sector te interesa saber de', X, '?' ];
					sector(X) -> R = ['Sector:' , X].
chatCandidato(X,R):- \+candidato(X), R = [X, 'no es un candidato o un sector'].

chatSectores(X, R):-  sector(X), R = ['elejiste el sector', X ].
chatSectores(X, R):- \+sector(X), R = [X, 'no es un candidato o un sector'].

chatPropuesta(X,Y, R):- propuesta(X,Y,Z), R = [Z]. 
chatPropuesta(X,Y, R):- \+propuesta(X,Y,Z), R = ['no existe']. 

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :- 
	atom(S), 
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatCandidato(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSector,
	chatSectores(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	writeln(Atom),
	chatPropuesta(_, Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M > 0,
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	chatPropuesta(Atom, _, R),
	writeln(Atom),
	replace0(Index, Input, N, Resp, R).

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), 
	append(R1, [], R),!.