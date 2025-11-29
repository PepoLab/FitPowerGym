🏋️‍♂️ FitPower Gym – Sistema de Gestão de Academia

Sistema de modelagem de banco de dados desenvolvido para fins acadêmicos, com foco em normalização, modelagem conceitual, lógica e física. O projeto representa o funcionamento de uma academia fictícia chamada FitPower Gym e inclui DER, modelo lógico, normalização (1FN, 2FN, 3FN), scripts SQL e exemplos de consultas.

__________________________________________________________________________________________________________________________

🧠 Descrição do Minimundo

A FitPower Gym é uma academia voltada ao desenvolvimento físico e bem-estar dos alunos, oferecendo musculação e treinos personalizados.
Cada aluno:

possui um plano de pagamento;

é acompanhado por um instrutor;

realiza treinos compostos por diversos exercícios;

faz avaliações físicas periódicas;

tem presenças registradas ao entrar na academia;

realiza pagamentos mensais ou de acordo com seu plano.

O sistema busca organizar e armazenar todas essas informações de forma consistente, segura e normalizada.

__________________________________________________________________________________________________________________________

🧩 Entidades Principais

tb_aluno

tb_instrutor

tb_plano

tb_treino

tb_exercicio

tb_treino_exercicio (tabela associativa)

tb_avaliacao_fisica

tb_pagamento

tb_presenca

Todas as entidades foram normalizadas até a Terceira Forma Normal (3FN).
__________________________________________________________________________________________________________________________