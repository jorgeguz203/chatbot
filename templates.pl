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
template([dime, los, candidatos], ['Los candidatos a la presidencia son: AMLO por Morena, Meade por el PRI, Anaya por el pan
	Margarita como independiente y el Bronco igual como independiente pero este aun no tiene
	propuestas. Quieres hablar de alguno en especial?'], []).
template([ayuda], ['para preguntar menciona el candidato y el sector deseado, puedes preguntar por los candidatos
	o por los sectores'], []).
template([como, debo, preguntar], ['Para tener una respuesta concreta es necesario mencionar el candidato 
	y despues el sector deseado'], []).
template([show, c], ['Go to https://www.gnu.org/licenses/gpl-3.0.en.html to know te terms and politics'], []).
template([show, w], ['Go to https://www.gnu.org/licenses/gpl-3.0.en.html to know te terms and politics'], []).

%Preguntas de sectores
template([cuales, son, los, sectores], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'], []).
template([cuales, son, los, sectores, _], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([que, son, los, sectores], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([que, son, los, sectores, _], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([sectores, ?], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([sectores, ?, _], ['Los sectores a los que las propuestan van drigidas son: corrupcion, economia, desarrollo, educacion,
	social, seguridad, internacional o todos'],[]).
template([candidato, ricardo, _], ['podrias referirte a ricardo anaya solo como anaya'], []).
template([candidato, jose, _], ['podrias referirte a jose meade solo como meade'], []).
template([candidato, antonio, _], ['podrias referirte a antonio meade solo como meade'], []).
template([candidato, andres, _], ['podrias referirte a andres solo como amlo'], []).
template([candidato, manuel, _], ['podrias referirte a manuel solo como amlo'], []).
template([candidato, lopez, _], ['podrias referirte a lopez solo como amlo'], []).
template([candidato, obrador, _], ['podrias referirte a obrador solo como amlo'], []).
template([candidato, zavala, _], ['podrias referirte a zalava solo como margarita'], []).

template([me, interesa, saber, sobre, el, sector, de, s(), del, candidato, s()], [flagPropuesta], [7, 10]).
template([me, gustaria, saber, las, propuestas, de, s(), en, el, sector, s()], [flagPropuesta], [6, 10]).
template([quiero, saber, las, propuestas, de, s(), en, el, sector, s()], [flagPropuesta], [5, 9]).
template([me, interesa, saber, del, candidato, s(), sus, propuestas, en, s()], [flagPropuesta], [5, 9]).
template([me, interesa, saber, del, candidato, s(), del, sector, de, s()], [flagPropuesta], [5, 9]).
template([como, va, a, mejorar, la, s(), s()], [flagPropuesta], [5, 6]).
template([como, va, a, terminar, la, s(), s()], [flagPropuesta], [5, 6]).
template([quiero, saber, las, propuestas, de, s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [5, 11]).
template([me, gustaria, saber, de, s(), los, candidatos, el, sector, de, s()], [flagPropuesta], [4, 10]).
template([quisiera, saber, propuestas, de, s(), del, candidato, s()], [flagPropuesta], [4, 7]).
template([me, interesa, saber, de, s(), los, candidatos, el, sector, s()], [flagPropuesta], [4, 9]).
template([que, propuesta, tiene, s(), para, combatir, la, s()], [flagPropuesta], [3, 7]).
template([del, sector, de, s(), s(), los, candidatos], [flagPropuesta], [3, 4]).
template([del, candidato, s(), en, el, sector, de, s()], [flagPropuesta], [2, 7]).
template([del, candidato, s(), en, el, sector, s()], [flagPropuesta], [2, 6]).
template([que, hara, s(), para, combatir, s()], [flagPropuesta], [2, 5]).
template([que, hara, s(), para, combatir, la, s()], [flagPropuesta], [2, 6]).
template([quisiera, saber, de, s(), los, candidatos, las, propuestas, del, sector, s()], [flagPropuesta], [3, 10]).
template([que, propone, s(), en, s()], [flagPropuesta], [2, 4]).
template([dime, las, s(), de, s()], [flagPropuesta], [2, 4]).
template([quiero, saber, s(), las, propuestas, de, s()], [flagPropuesta], [2, 6]).
template([dime, las, s(), de, s()], [flagPropuesta], [2, 4]).
template([de, s(), el, sector, de, s()], [flagPropuesta], [1, 5]).
template([de, s(), del, sector, s()], [flagPropuesta], [1, 4]).
template([candidato, s(), sector, s()], [flagPropuesta], [1, 3]).
template([sobre, s(), del, sector, s()], [flagPropuesta], [1, 4]).
template([de, s(), s()], [flagPropuesta], [1, 2]).
template([de, s(), los, candidatos, el, sector, de, s()], [flagPropuesta], [1, 7]).
template([candidatos, s(), s()], [flagPropuesta], [1, 2]).
template([sobre, s(), en, s(), los, sectores], [flagPropuesta], [1, 3]).
template([sobre, s(), s(), las, propuestas], [flagPropuesta], [1, 2]).
template([de, s(), en, s(), los, sectores], [flagPropuesta], [1, 3]).
template([de, s(), s(), las, propuestas], [flagPropuesta], [1, 2]).
template([del, candidato, s(), en, s(), los, sectores], [flagPropuesta], [2, 4]).
template([del, candidato, s(), s(), las, propuestas], [flagPropuesta], [2, 3]).
template([del, candidato, s(), s(), sus, propuestas], [flagPropuesta], [2,3]).
template([cuales, son, s(), las, propuestas, de, s()], [flagPropuesta], [2,6]).
template([cuales, son, las, s(), de, s()], [flagPropuesta], [3,5]).

template([de, s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [1,7]).
template([de, s(), los, candidatos, en, el, sector, de, s()], [flagPropuesta], [1,8]).
template([quiero, saber, de, s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [3,9]).
template([quiero, saber, de, s(), los, candidatos, en, el, sector, de, s()], [flagPropuesta], [3,10]).
template([s(), los, candidatos, en, el, sector, s()], [flagPropuesta], [0,6]).


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

template([s(),s()], [flagPropuesta], [0,1]).
template([s(), propuestas, de, s()], [flagPropuesta], [0, 3]).
template([s(), los, candidatos, sobre, la, s()], [flagPropuesta], [0, 7]).
template([s(), las, propuestas, de, s()], [flagPropuesta], [0, 4]).





template(_, ['Podrias darte a explicar un poco mas ?'], []).