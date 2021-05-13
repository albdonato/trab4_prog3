import os

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, session, sessionmaker
from sqlalchemy.sql.elements import Null
from sqlalchemy import insert


engine = create_engine(os.getenv("DATABASE_URL"))
db = scoped_session(sessionmaker(bind=engine))

def main():
    #1 TODAS DISCIPLINAS
    discs = db.execute("SELECT id, codigo, disciplina, carga\
                    FROM disciplinas;").fetchall()

    for disc in discs:
        print(f"{disc.id}, {disc.codigo}, {disc.disciplina} de carga {disc.carga} horas")
    #2 perguntar o id da discciplina a cursar
    disc_escolha=int(input("id da disciplina que voce quer cursar?  ")) 
    if disc_escolha== -1:
        return
    while disc_escolha != -1:
        for d_id in discs:
            if disc_escolha in d_id: # 3 se verdadeiro, id é válido
                print(f'voce escolheu {d_id.disciplina}...')
                #3.1 Caso tenha o código, printar professores que não estao em uma materia
                prof_noclass=db.execute("SELECT DISTINCT professores.professor, professores.id\
                                            FROM professores\
                                            LEFT JOIN turmas on professores.id=turmas.id_prof\
                                            WHERE turmas.id IS NULL;").fetchall()
                if len(prof_noclass)==0: #3.1.1
                    print("Nenhum professor disponível")
                    return
                else:
                    print(f"professores disponíveis:{prof_noclass}") 
                    escolha_prof=0
                    while escolha_prof!=-1:
                        escolha_prof=int(input("Escolha um professor digitando seu id, ou -1 para sair...  "))#4/5/6.1
                        for prof in prof_noclass:
                            if escolha_prof in prof: #6validade da escolha do professor
                                escolha_turno=str(input("escolha um turno entre manhã/tarde/noite  "))
                                escolha_vagas=int(input("Escolha o número de vagas da turma  "))
                                escolha_salario=input("voce quer escolher salario [s/n]? ")
                                if escolha_salario=='s':
                                    escolha_salario=float(input("Escolha salario do professor "))
                                else:
                                    escolha_salario is Null
                                   
                                nova_turma=db.execute(f"INSERT INTO turmas\
                                                    (id,id_prof,id_disc,turno,vagas,salario) VALUES\
                                                       ({32},{escolha_prof},{disc_escolha},{escolha_turno},{escolha_salario});").db.commit
                                turmas=db.execute("SELECT * from turmas;").fetchall
                                print(turmas)
                                

                                escolha_prof = -1
                disc_escolha = -1
        if disc_escolha == -1:
            return
        else:
            disc_escolha=int(input("id da disciplina incorreto...digite novamente  "))

        
    #while():
    disc_escolha=int(input("id da disciplina que voce quer cursar?  "))
    if f"({disc_escolha},)" in discs:
        print("ok")
        
    if disc_escolha== -1:
        return

if __name__ == "__main__":
    main()