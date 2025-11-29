
CREATE TABLE tb_instrutor (
    id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_plano
-- =============================
CREATE TABLE tb_plano (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    duracao_meses INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_aluno
-- =============================
CREATE TABLE tb_aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_matricula DATE NOT NULL,
    id_plano INT NOT NULL,
    id_instrutor INT NOT NULL,

    FOREIGN KEY (id_plano) REFERENCES tb_plano(id_plano),
    FOREIGN KEY (id_instrutor) REFERENCES tb_instrutor(id_instrutor)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_exercicio
-- =============================
CREATE TABLE tb_exercicio (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    grupo_muscular VARCHAR(50) NOT NULL,
    descricao TEXT
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_treino
-- =============================
CREATE TABLE tb_treino (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_instrutor INT NOT NULL,
    data_criacao DATE NOT NULL,
    objetivo VARCHAR(100),
    observacoes TEXT,

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES tb_instrutor(id_instrutor)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_treino_exercicio (tabela associativa N:N)
-- =============================
CREATE TABLE tb_treino_exercicio (
    id_treino INT NOT NULL,
    id_exercicio INT NOT NULL,
    series INT NOT NULL,
    repeticoes INT NOT NULL,
    carga DECIMAL(10,2),

    PRIMARY KEY (id_treino, id_exercicio),

    FOREIGN KEY (id_treino) REFERENCES tb_treino(id_treino),
    FOREIGN KEY (id_exercicio) REFERENCES tb_exercicio(id_exercicio)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_avaliacao_fisica
-- =============================
CREATE TABLE tb_avaliacao_fisica (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_avaliacao DATE NOT NULL,
    peso DECIMAL(10,2),
    altura DECIMAL(10,2),
    percentual_gordura DECIMAL(10,2),
    massa_magra DECIMAL(10,2),
    observacoes TEXT,

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_pagamento
-- =============================
CREATE TABLE tb_pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    metodo VARCHAR(50),
    status VARCHAR(50),

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno)
) ENGINE=InnoDB;

-- =============================
-- TABELA: tb_presenca
-- =============================
CREATE TABLE tb_presenca (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME,

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno)
) ENGINE=InnoDB;
