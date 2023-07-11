create database Projeto;
use Projeto;

CREATE TABLE Localidade (
    CEP VARCHAR(10) NOT NULL,
    Rua VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    PRIMARY KEY (CEP)
);

CREATE TABLE Fornecedores(
    CodForn INTEGER(15) NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    CNPJ VARCHAR(20) UNIQUE NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    PRIMARY KEY (CodForn),
    FOREIGN KEY (CEP)
    REFERENCES Localidade (CEP)
);

CREATE TABLE Produto (
    CodProd INTEGER(15) NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    Custo FLOAT(10) NOT NULL,
    ValorVenda FLOAT(10) NOT NULL,
    Variacoes VARCHAR(100) DEFAULT NULL,
    Unidade VARCHAR(100) DEFAULT NULL,
    Marca VARCHAR(100) DEFAULT NULL,
    CodForn INTEGER(15) NOT NULL,
    PRIMARY KEY (CodProd),
    FOREIGN KEY (CodForn)
    REFERENCES Fornecedores (CodForn)
);

CREATE TABLE Servico (
    CodServico INTEGER(15) NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(50) NOT NULL,
    PRIMARY KEY (CodServico)
);

CREATE TABLE Pessoa (
    CodPessoa INTEGER(15) NOT NULL AUTO_INCREMENT,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Data_Nasc DATE DEFAULT NULL,
    Sexo VARCHAR(10) DEFAULT NULL,
    PRIMARY KEY (CodPessoa)
);

CREATE TABLE Funcionario (
    CodPessoa INTEGER(15) NOT NULL,
    Salario FLOAT(10) NOT NULL,
    Cargo VARCHAR(20) NOT NULL,
    PRIMARY KEY (CodPessoa),
    FOREIGN KEY (CodPessoa)
    REFERENCES Pessoa (CodPessoa)
);

CREATE TABLE Cliente (
    CodPessoa INTEGER(15) NOT NULL,
    Obs VARCHAR(500) DEFAULT NULL,
    Debitos FLOAT(10) DEFAULT NULL,
    PRIMARY KEY (CodPessoa),
    FOREIGN KEY (CodPessoa) 
    REFERENCES Pessoa (CodPessoa)
);

CREATE TABLE Contato (
    CodContato INTEGER(15) NOT NULL AUTO_INCREMENT,
    Cel VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Tel VARCHAR(50) DEFAULT NULL,
    CodPessoa INTEGER(15) DEFAULT NULL,
    CodForn INTEGER(15) DEFAULT NULL,
    PRIMARY KEY (CodContato),
    FOREIGN KEY (CodPessoa) 
    REFERENCES Pessoa (CodPessoa),
    FOREIGN KEY (CodForn) 
    REFERENCES Fornecedores (CodForn)
);


CREATE TABLE Estoque_Produto (
    CodEst INTEGER(15) NOT NULL AUTO_INCREMENT,
    Qtd_Estoque INTEGER DEFAULT NULL,
    Data_Adicionado DATE DEFAULT NULL,
    CodProd INTEGER(15) NOT NULL,
    PRIMARY KEY (CodEst),
    FOREIGN KEY (CodProd) 
    REFERENCES Produto (CodProd)
);

CREATE TABLE Caixa (
    CodCaixa INTEGER(15) NOT NULL AUTO_INCREMENT,
    Data_fechamento DATE NOT NULL,
    PRIMARY KEY (CodCaixa)
);

CREATE TABLE Pedido_Cliente (
    CodPedidoC INTEGER(15) NOT NULL AUTO_INCREMENT,
    Mtd_Pagamento VARCHAR(20) NOT NULL,
    Obs VARCHAR(50) DEFAULT NULL,
    Valor FLOAT(10) DEFAULT 0,
    CodServico INTEGER(15) NOT NULL,
    CodPessoa INTEGER(15) NOT NULL,
    CodCaixa INTEGER(15) NOT NULL,
    PRIMARY KEY (CodPedidoC),
    FOREIGN KEY (CodServico)
    REFERENCES Servico (CodServico),
    FOREIGN KEY (CodPessoa)
    REFERENCES Cliente (CodPessoa),
    FOREIGN KEY (CodCaixa) 
    REFERENCES Caixa (CodCaixa)
);

CREATE TABLE Pedido_Loja (
    CodPedidoL INTEGER(15) NOT NULL AUTO_INCREMENT,
    Valor FLOAT(10) DEFAULT 0,
    DataPedido DATE NOT NULL, 
    CodCaixa INTEGER(15) NOT NULL,
    PRIMARY KEY (CodPedidoL),
    FOREIGN KEY (CodCaixa) 
    REFERENCES Caixa (CodCaixa)
);

CREATE TABLE Realizado_por (
    CodPessoa INTEGER(15) NOT NULL,
    CodServico INTEGER(15) NOT NULL,
    PRIMARY KEY (CodPessoa, CodServico),
    FOREIGN KEY (CodPessoa) 
    REFERENCES Funcionario (CodPessoa),
    FOREIGN KEY (CodServico) 
    REFERENCES Servico (CodServico)
);

CREATE TABLE Compra_Cliente (
    CodPedidoC INTEGER(15) NOT NULL,
    CodEst INTEGER(15) NOT NULL,
    DataPedido DATE NOT NULL,
    Quantidade INTEGER NOT NULL,
    PRIMARY KEY (CodPedidoC, CodEst),
    FOREIGN KEY (CodPedidoC) 
    REFERENCES Pedido_Cliente (CodPedidoC),
    FOREIGN KEY (CodEst) 
    REFERENCES Estoque_Produto (CodEst)
);

CREATE TABLE Compra_Loja (
    CodProd INTEGER(15) NOT NULL,
    CodPedidoL INTEGER(15) NOT NULL,
    DataEntrega DATE NOT NULL,
    Quantidade INTEGER NOT NULL,
    PRIMARY KEY (CodProd, CodPedidoL),
    FOREIGN KEY (CodProd) 
    REFERENCES Produto (CodProd),
    FOREIGN KEY (CodPedidoL) 
    REFERENCES Pedido_Loja (CodPedidoL)
);

CREATE TABLE Envio (
    CodEnvio INTEGER(15) NOT NULL AUTO_INCREMENT,
    Frete FLOAT(10) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    Numero INTEGER NOT NULL,
    Obs_endereco VARCHAR(50) DEFAULT NULL,
    Obs_envio VARCHAR(50) DEFAULT NULL,
    CodPedidoC INTEGER(15) NOT NULL,
    CodPessoa INTEGER(15) NOT NULL,
    PRIMARY KEY (CodEnvio),
    FOREIGN KEY (CodPedidoC) 
    REFERENCES Pedido_Cliente (CodPedidoC),
    FOREIGN KEY (CodPessoa) 
    REFERENCES Pessoa (CodPessoa),
    FOREIGN KEY (CEP) 
    REFERENCES Localidade (CEP)
);

