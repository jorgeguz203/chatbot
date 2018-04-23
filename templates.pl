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
	social, seguridad, internacional o todos'], []).
template([cuales, son, los, sectores, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([que, son, los, sectores], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([que, son, los, sectores, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([sectores, ?], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([sectores, ?, _], ['Los sectoresa a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).

template([hablemos, de, s()], [flagCandidato], [2]).
template([quiero, hablar, de, s()], [flagCandidato], [3]).
template([si, de , s()], [flagCandidato], [2]).
template([que, sabes, de, s()], [flagCandidato], [3]).
template([de, las, propuestas, de, s()], [flagCandidato], [4]).
template([me, gustaria, saber, de, s()], [flagCandidato], [4]).
template([del, candidato, s()], [flagCandidato], [2]).
template([quiero, saber, del, candidato, s()], [flagCandidato], [4]).

template([quiero, hablar, de, s(), _], [flagCandidato], [3]).
template([si, de , s(), _], [flagCandidato], [2]).
template([que, sabes, de, s(), _], [flagCandidato], [3]).
template([de, las, propuestas, de, s(), _], [flagCandidato], [4]).
template([me, gustaria, saber, de, s(), _], [flagCandidato], [4]).
template([del , sector, de,  s()], [flagCandidato], [3]).

template([de, s(), el, sector, de, s()], [flagPropuesta], [1, 5]).
template([de, s(), del, sector, s()], [flagPropuesta], [1, 4]).
template([candidato, s(), sector, s()], [flagPropuesta], [1, 3]).
template([quiero, saber, las, propuestas, de, s(), en, el, sector, s()], [flagPropuesta], [5, 9]).
template([me, gustaria, saber, las, propuestas, de, s(), en, el, sector, s()], [flagPropuesta], [6, 10]).
template([sobre, s(), del, sector, s()], [flagPropuesta], [1, 4]).

template([sobre, s(), en, s(), los, sectores], [flagPropuesta], [1, 3]).
template([sobre, s(), s(), las, propuestas], [flagPropuesta], [1, 2]).
template([de, s(), en, s(), los, sectores], [flagPropuesta], [1, 3]).
template([de, s(), s(), las, propuestas], [flagPropuesta], [1, 2]).
template([del, candidato, s(), en, s(), los, sectores], [flagPropuesta], [2, 4]).
template([del, candidato, s(), s(), las, propuestas], [flagPropuesta], [2, 3]).

template([de, s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [1,7]).
template([de, s(), los, candidatos, en, el, sector, de, s()], [flagPropuesta], [1,8]).
template([quiero, saber, de, s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [3,9]).
template([quiero, saber, de, s(), los, candidatos, en, el, sector, de, s()], [flagPropuesta], [3,10]).
template([s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [0,6]).







template(_, ['Podrias darte a explicar un poco mas ?'], []).