----1. Quem dá aulas de Geometria Analítica?
SELECT professor
FROM professores
JOIN disciplinas on professores.id=disciplinas.id
WHERE codigo='GAAL';
--Lua Espírito Santo

----2. Onde os professores de Geometria Analítica moram?
SELECT bairro
FROM professores
JOIN disciplinas on professores.id=disciplinas.id
JOIN bairros on professores.id_bairro=bairros.id
WHERE codigo='GAAL';
--Botafogo

----3. Quem dá Laboratório de Cálculo à tarde?
SELECT DISTINCT professor
FROM professores
JOIN disciplinas on professores.id=disciplinas.id
JOIN turmas on professores.id=turmas.id_prof
WHERE codigo='LABCALC' AND turno='tarde';
--Marco Lages

----4. Quem dá Laboratório de Cálculo ou Computação à tarde?
SELECT DISTINCT professor
FROM professores
JOIN disciplinas on professores.id=disciplinas.id
JOIN turmas on professores.id=turmas.id_prof
WHERE codigo='LABCALC' OR codigo = 'LABCOMP'
AND turno='tarde';
--Marco Lages
--Marisa Pessanha

----5. Quem dá Laboratório (de qualquer matéria) à tarde?
SELECT DISTINCT professor
FROM professores
JOIN turmas on professores.id=turmas.id_prof
WHERE turno='tarde';
--Tairine Bogado
--Celina Grillo
--Cauã Díaz
--Clóvis Villegas
--Roberto Caiado
--Marisa Pessanha
--Marco Lages
--Tiago Anjos
--Lua Espírito Santo

----6. Quais são os professores têm mais de 32 anos?
SELECT professor ,idade
FROM professores
WHERE idade > 32;
----Cauã Díaz|51
----Celina Grillo|55
----Clóvis Villegas|57
----Gonçalo Flores|86
----Ibijara Chaves|46
----Lua Espírito Santo|62
----Manuela Granjeiro|37
----Marco Lages|47
----Marisa Pessanha|41
----Roberto Caiado|39
----Tiago Anjos|65

----7. Quantas turmas estão sendo oferecidas de uma dada 1isciplina (o usuáriodeve escolher a disciplina no momento de 1ealizar a consulta)?
SELECT disciplina, COUNT(*)
FROM turmas
JOIN disciplinas on turmas.id_disc=disciplinas.id
GROUP BY disciplina;
------Cálculo I|4
------Fundamentos Clássicos das Ciências Sociais|2
------Geometria Analítica e Álgebra Linear|5
------História Econômica Geral|3
------Introdução à Administração|1
------Introdução à Computação|3
------Introdução à Economia|4
------Laboratório de Computação|3
------Laboratório de Cálculo|3
------Laboratório de GAAL|3

----8. Quantas cadeiras cada professor ministra?
SELECT professor, COUNT(*)
FROM professores
JOIN turmas on professores.id=turmas.id_prof
GROUP BY professor;
--------Cauã Díaz|3
--------Celina Grillo|1
--------Clóvis Villegas|3
--------Gonçalo Flores|2
--------Ibijara Chaves|2
--------Lua Espírito Santo|4
--------Marco Lages|3
--------Marisa Pessanha|3
--------Roberto Caiado|5
--------Tairine Bogado|1
--------Tiago Anjos|4

----9. Qual é a carga horária total de cada professor?
SELECT professor, SUM(carga)
FROM professores
JOIN turmas on professores.id=turmas.id_prof
JOIN disciplinas on turmas.id_prof=disciplinas.id
GROUP BY professor;
----------Cauã Díaz|180
----------Celina Grillo|60
----------Clóvis Villegas|180
----------Gonçalo Flores|120
----------Ibijara Chaves|120
----------Lua Espírito Santo|240
----------Marco Lages|90
----------Marisa Pessanha|90
----------Roberto Caiado|150

----10. Ordene a consulta 9 por carga horária – mostre primeiro os professoresque têm maior carga horária.
SELECT professor, SUM(carga)
FROM professores
JOIN turmas on professores.id=turmas.id_prof
JOIN disciplinas on turmas.id_prof=disciplinas.id
GROUP BY professor 
ORDER BY SUM(carga) DESC;
--Lua Espírito Santo	240
--Clóvis Villegas	180
--Cauã Díaz	180
--Roberto Caiado	150
--Ibijara Chaves	120
--Gonçalo Flores	120
--Marisa Pessanha	90
--Marco Lages	90
--Celina Grillo	60

----11. Se os professores ganham R$50 por hora, quanto ganham no 1otal?Quanto a escola gasta com salários de professores
SELECT professor, (SUM(carga)*50) AS salario
FROM professores
JOIN turmas on professores.id=turmas.id_prof
JOIN disciplinas on turmas.id_prof=disciplinas.id
GROUP BY professor 
ORDER BY salario DESC;
------------Lua Espírito Santo|12000
------------Clóvis Villegas|9000
------------Cauã Díaz|9000
------------Roberto Caiado|7500
------------Ibijara Chaves|6000
------------Gonçalo Flores|6000
------------Marisa Pessanha|4500
------------Marco Lages|4500
------------Celina Grillo|3000
SELECT (SUM(carga)*50) AS custo_total
FROM professores
JOIN turmas on professores.id=turmas.id_prof
JOIN disciplinas on turmas.id_prof=disciplinas.id;
--61500

----12. Qual é a carga horária total de cada professor contando apenas as aulasdo turno da tarde?
SELECT professor, SUM(carga)
FROM professores
JOIN turmas on professores.id=turmas.id_prof
JOIN disciplinas on turmas.id_prof=disciplinas.id
WHERE turno='tarde'
GROUP BY professor
ORDER BY carga DESC;
--Lua Espírito Santo|180
--Clóvis Villegas|120
--Celina Grillo|60
--Cauã Díaz|60
--Roberto Caiado|90
--Marisa Pessanha|60
--Marco Lages|60