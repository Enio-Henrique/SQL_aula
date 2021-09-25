CREATE TABLE clientes
(
    id int not null PRIMARY KEY, -- define a chave primaria no inicio
    nome varchar(70) not null,
    whats varchar(17)
);
CREATE TABLE clientes
(
    id int not auto_incremment null,
    nome varchar(70) not null,
    whats varchar(17),
    PRIMARY KEY (id) -- define a chave primaria no final
    
);

-- diferenca entre char(n) e VARCHAR(N)

/*
    termo CHAR(10)
    termo
    ||||||||||
    oi||||||||
    eniohenriq

    termo_1 VARCHAR(10)

    oi
    alo
    chocol

*/



/*
    Tipos de dados de tempo

    date yyyy-MM-dd
    datetime: yyyy-MM-dd hh:mm:ss
    time hh:mm:ss
    timeStamp: yyyy-MM-dd-hh:mm:ss

*/

--Resumo da criacão de clientes e vendas
CREATE TABLE clientes
(
    id int not auto_incremment null,
    nome varchar(70) not null,
    whats varchar(17),
    PRIMARY KEY (id) -- define a chave primaria no final
    
);

CREATE TABLE vendas
(
    id INT NOT NULL auto_incremment PRIMARY KEY,
    data_emissao DATE NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT cliente_venda
        FOREIGN KEY(id_cliente)
            REFERENCES clientes(id)
);

/*
    um produto percente a uma categoria e uma categoria tem muitos produtos
    um produto tem muitas fotos e uma foto pertence a mais de um produto

    quantas tabelas eu terei aqui?

    comandos DDL?
    

*/

CREATE TABLE categorias (
  id INT NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
);

CREATE TABLE produtos (
  id INT NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  valor FLOAT NOT NULL, 
  quantidade INT NOT NULL,
  id_categoria INT NOT NULL,
  CONSTRAINT categoria_do_produto
    FOREIGN KEY (id_categoria)
      REFERENCES categorias(id)
);

CREATE TABLE fotos (
  id INT NOT NULL PRIMARY KEY,
  url VARCHAR(255) NOT NULL
);

-- precisa ter uma tabela que referencie produtos e fotos (many to many)
CREATE TABLE fotos_produtos 
( 
  id_foto INT NOT NULL,
  id_produto INT NOT NULL,
  CONSTRAINT fotos_produtos_fotos_fk
    FOREIGN KEY (id_foto)
      REFERENCES fotos(id),
  CONSTRAINT fotos_produtos_produtos_fk
    FOREIGN KEY (id_produto)
      REFERENCES produtos(id)
);



produtos
id      nome            
100     notebook           
200     mala notebook   
300     notebook hp

fotos
id  url
1   ../1.jpg    
2   ../2.jpg    
3   ../3.jpg    

fotos_produtos
id_produto  id_foto
100         1
100         2
100         3
200         1
300         2
    
)