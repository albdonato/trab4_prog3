--dados dos bairros--
INSERT INTO bairros (id, bairro, zona) VALUES (1, 'Botafogo', 'Sul');
INSERT INTO bairros (id, bairro, zona) VALUES (2, 'Copacabana', 'Sul');
INSERT INTO bairros (id, bairro, zona) VALUES (3, 'Fernando de Noronha', 'Fora do Rio');
INSERT INTO bairros (id, bairro, zona) VALUES (4, 'Leblon', 'Sul');
INSERT INTO bairros (id, bairro, zona) VALUES (5, 'Niterói', 'Fora do Rio');
INSERT INTO bairros (id, bairro, zona) VALUES (6, 'Pavuna', 'Norte');
INSERT INTO bairros (id, bairro, zona) VALUES (7, 'Tijuca', 'Norte');


-- dados professores --
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(1,'Cauã Díaz','12/12/1970',51,7);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(2,'Celina Grillo','31,/3/1966',55,2);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(3,'Clóvis Villegas','13/5/1964',57,6);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(4,'Gonçalo Flores','12/02/1935',86,3);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(5,'Ibijara Chaves','12/4/1975',46,1);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(6,'Lua Espírito Santo','24/6/1959',62,1);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(7,'Manuela Granjeiro','13/12/1984',37,4);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(8,'Marco Lages','12/10/1974',47,4);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(9,'Marisa Pessanha','24/2/1980,',41,2);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(10,'Roberto Caiado','10/7/1982',39,5);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(11,'Tairine Bogado','13/5/1998',23,4);
INSERT INTO professores (id, professor, datanascimento, idade, id_bairro) VALUES(12,'Tiago Anjos','29/02/1956',65,7);

-- dados disciplinas
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(1,'ADM',"Introdução à Administração",4,60,"O que é adm?");
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(2,'CALC01','Cálculo I',4,60,'Como calcular...');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(3,'COMP','Introdução à Computação',4,60,'Como contar...');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(4,'ECON','Introdução à Economia',4,60,'Compre na baixa, venda na alta');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(5,'FCCS','Fundamentos Clássicos das Ciências Sociais',4,60,'Apenas fundamentos');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(6,'GAAL','Geometria Analítica e Álgebra Linear',4,60,'Geometria ou álgebra?');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(7,'HEG01','História Econômica Geral',4,60,'Histórias minimalistas');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(8,'LABCALC','Laboratório de Cálculo',2,30,'Como calcular... (lab)');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(9,'LABCOMP','Laboratório de Computação',2,30,'Como contar... (lab)');
INSERT INTO disciplinas (id, codigo, disciplina,creditos,carga,ementa) VALUES(10,'LABGAAL','Laboratório de GAAL',2,30,'Álgebra ou Geometria?');

--dados das turmas
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(1,11,4,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(2,2,1,'tarde',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(3,12,3,'noite',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(4,1,7,'manhã',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(5,1,5,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(6,3,6,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(7,12,4,'manhã',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(8,5,5,'manhã',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(9,10,2,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(10,4,6,'manhã',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(11,10,6,'noite',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(12,10,3,'tarde',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(13,9,3,'tarde',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(14,8,2,'tarde',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(15,10,7,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(16,6,4,'manhã',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(17,8,6,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(18,12,10,'tarde',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(19,9,9,'tarde',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(20,12,9,'tarde',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(21,6,8,'tarde',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(22,1,4,'noite',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(23,3,10,'tarde',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(24,3,2,'manhã',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(25,5,7,'noite',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(26,4,8,'manhã',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(27,6,6,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(28,6,10,'tarde',80,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(29,8,9,'manhã',25,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(30,9,2,'manhã',50,'');
INSERT INTO turmas (id,id_prof,id_disc,turno,vagas,salario) VALUES(31,10,8,'manhã',50,'');