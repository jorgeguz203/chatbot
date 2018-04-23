%Preguntas de candidatos
template([quienes, son, los, candidatos], ['Los candidatos a la presidencia son: AMLO por Morena, Meade por el PRI, Anaya por el pan
	Margarita como independiente y el Bronco igual como independiente pero este aun no tiene
	propuestas. Quieres hablar de alguno en especial?'], []).
template([quienes, son, los, candidatos, _], ['Los candidatos a la presidencia son: AMLO por Morena, Meade por el PRI, Anaya por el pan
	Margarita como independiente y el Bronco igual como independiente pero este aun no tiene
	propuestas. Quieres hablar de alguno en especial?'], []).
template([cuales, son, los, candidatos], ['Los candidatos a la presidencia son: AMLO por Morena, Meade por el PRI, Anaya por el pan
	Margarita como independiente y el Bronco igual como independiente pero este aun no tiene
	propuestas. Quieres hablar de alguno en especial?'], []).
template([cuales, son, los, candidatos, _], ['Los candidatos a la presidencia son: AMLO por Morena, Meade por el PRI, Anaya por el pan
	Margarita como independiente y el Bronco igual como independiente pero este aun no tiene
	propuestas. Quieres hablar de alguno en especial?'], []).

%Preguntas de sectores
template([cuales, son, los, sectores], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'], []).
template([cuales, son, los, sectores, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'],[]).
template([que, son, los, sectores], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'],[]).
template([que, son, los, sectores, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'],[]).
template([sectores, ?], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'],[]).
template([sectores, ?, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad e internacional'],[]).

template([de , s()], [flagCandidato], [1]).
template([hablemos, de, s()], [flagCandidato], [2]).
template([quiero, hablar, de, s()], [flagCandidato], [3]).
template([si, de , s()], [flagCandidato], [2]).
template([que, sabes, de, s()], [flagCandidato], [3]).
template([de, las, propuestas, de, s()], [flagCandidato], [4]).
template([me, gustaria, saber, de, s()], [flagCandidato], [4]).
template([de , s(), _], [flagCandidato], [1]).

template([quiero, hablar, de, s(), _], [flagCandidato], [3]).
template([si, de , s(), _], [flagCandidato], [2]).
template([que, sabes, de, s(), _], [flagCandidato], [3]).
template([de, las, propuestas, de, s(), _], [flagCandidato], [4]).
template([me, gustaria, saber, de, s(), _], [flagCandidato], [4]).

template([del , sector, de,  s()], [flagSector], [3]).

template([de, s(), el, sector, de, s()], [flagPropuesta], [1, 5]).
template([candidato, s(), sector, s()], [flagPropuesta], [1, 3]).
template([del, candidato, s(), sector, s()], [flagPropuesta], [2, 4]).





template(_, ['Podrias darte a explicar un poco mas ?'], []).