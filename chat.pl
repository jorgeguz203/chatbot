    %<one line to give the program's name and a brief idea of what it does.>
    %Copyright (C) 2018  Jorge Armando Guzman Flores

    %This program is free software: you can redistribute it and/or modify
    %it under the terms of the GNU General Public License as published by
    %the Free Software Foundation, either version 3 of the License, or
    %(at your option) any later version.

    %This program is distributed in the hope that it will be useful,
    %but WITHOUT ANY WARRANTY; without even the implied warranty of
    %MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    %GNU General Public License for more details.

    %You should have received a copy of the GNU General Public License
    %along with this program.  If not, see <https://www.gnu.org/licenses/>.

:- [propuestas, templates, kb]. %calls the files of the KBs

%main function, this is the one that controls the inputs and send them to the logic
chat:-writeln('chatPropuestas Copyright (C) 2018  Jorge Armando Guzman Flores
    This program comes with ABSOLUTELY NO WARRANTY; for details type show w.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type show c for details.'),
    writeln(''),
	writeln('Hola y bienvenido al chatbot de las elecciones, aqui podras encontrar informacion acerca de las propuestas
	de los candidatos a la presidencia Mexico 2018. Menciona el candidato y el sector que te interesa saber?
	El bronco no entra en este chat debido a que sus propuestas fueron dadas despues'),
	readln(Input), %makes the input a list of words
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

%This section is just to see if the names of the candidates is correct
chatMeade(X, R) :- meade(X), R = ['Favor de referise a', X, 'como meade'].
chatAnaya(X, R) :- anaya(X), R = ['Favor de referise a', X, 'como anaya'].
chatAmlo(X, R) :- amlo(X), R = ['Favor de referise a', X, 'como amlo'].
chatMargarita(X, R) :- margarita(X), R = ['Favor de referise a', X, 'como margarita'].

%this functions compare the keywords to see if they match to the kb.
chatCandidato(X,R):- candidato(X) ->  R = ['No mencionase que sector te interesa saber de', X, '?' ];
		sector(X) -> R = ['No mencionaste al candidato que te interesa saber del sector' , X]. %if the keyword matches it send this response
chatCandidato(X,R):- \+candidato(X), R = [X, 'no es un candidato o un sector']. %if does not match it sends this message
chatSectores(X, R):-  sector(X), R = ['No mencionaste al candidato que te interesa saber del sector', X ].
chatSectores(X, R):- \+sector(X), R = [X, 'no es un candidato o un sector'].
chatPropuesta(X,Y, R):- propuesta(X,Y,Z), R = [Z]. %Z is the proposal in the kb of propuesta, that is the aswer
chatPropuesta(X,Y, R):- \+propuesta(X,Y,Z), R = ['No existe el candidato o el sector, puedes preguntar 
	de nuevo, por los candidatos o los sectores, tambien puede ser que el candidato no tiene propuestas
	de ese sector o que te refieras a un candidato por otro nombre que no sea los siguientes: amlo,
	anaya, meade o margarita']. 

%this function is the one that compares the input with the templates
match([],[]).
match([], _):- true.

%compare word by word to see if there is any matches
match([S|Stim],[I|Input]) :- 
	atom(S), 
	S == I,
	match(Stim, Input),!.

%if there is no match it sends the contingency error
match([S|Stim],[_|Input]) :-
	\+atom(S),
	match(Stim, Input),!.

%This is where the keywords are changed to responses. 
substitute([], _, _, Resp, R):- append(Resp, [], R),!.

%the following functions, take the keyword and send them to their respective function to compare that word in the kb
substitute([I|_], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatMeade(Atom, R).

substitute([I|_], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatAnaya(Atom, R).

substitute([I|_], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatAmlo(Atom, R).

substitute([I|_], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatMargarita(Atom, R).

substitute([I|_], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagCandidato,
	chatCandidato(Atom, R).

substitute([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSector,
	chatSectores(Atom, R).

%this work different from the others, because here we have 2 keywords in different pard of the list.
%so its important to take the list and see how many keywords are in the list to send them in the correct order to the function
substitute([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0, %if there is no more words in the list send the las keyword
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	chatPropuesta(_, Atom, R).

substitute([I|Index], Input, N, Resp, R):-
	length(Index, M), M > 0, %while the list has more words keep searching the keyords
	nth0(I, Input, Atom),
	nth0(N, Resp, X),
	X == flagPropuesta,
	chatPropuesta(Atom, _, R),
	substitute(Index, Input, N, Resp, R).

%this is more simple, this just search for keywords that does not belong in a kb, so just take the sentence
%the keyword and send a response putting the keyword where it belong in te resp
substitute([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), 
	append(R1, [], R),!.