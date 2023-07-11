
INSERT INTO Localidade (CEP, Rua, Cidade, Estado, Bairro) VALUES 
('02.873-380', 'Travessa Onofre Lipari', 'São Paulo', 'SP', 'Conjunto Promorar Estrada da Parada'),
('08.771-160', 'Rua Menotti Del Picchia', 'Mogi das Cruzes', 'SP', 'Parque Residencial Itapeti'),
('17.066-754', 'Rua Antônia Ravanell Costa', 'Bauru', 'SP', 'Núcleo Habitacional Fortunato Rocha Lima'),
('12.092-813', 'Rua José Antonio Pereira', 'Taubaté', 'SP', 'Jardim Continental'),
('13.181-074', 'Rua João Francisco Camilo', 'Sumaré', 'SP', 'Jardim São Francisco (Nova Veneza)'),
('08.771-070', 'Rua Cora Coralina', 'Mogi das Cruzes', 'SP', 'Parque Residencial Itapeti'),
('04.888-090', 'Rua Wilson Helfenstein', 'São Paulo', 'SP', 'Chácara São Silvestre'),
('06.787-310', 'Rua Bernardo Joaquim de Moraes', 'Taboão da Serra', 'SP', 'Jardim Salete'),
('08.440-240', 'Rua Iaparandiba', 'São Paulo', 'SP', 'Jardim do Campo'),
('15.057-425', 'Rua João Canizza', 'São José do Rio Preto', 'SP', 'Conjunto Habitacional São Deocleciano'),
('19.802-505', 'Rua Seis', 'Assis', 'SP', 'Jardim 3 Américas I'),
('24.440-170', 'Rua José Alves de Azevedo', 'São Gonçalo', 'RJ', 'Zé Garoto'),
('25.260-440', 'Rua Almirante Barroso', 'Duque de Caxias', 'RJ', 'Parque A Equitativa'),
('28.920-234', 'Rua A', 'Cabo Frio', 'RJ', 'Jardim Esperança'),
('31.575-440', 'Rua dos Camargo', 'Belo Horizonte', 'MG', 'Vila Santa Branca (Venda Nova)'),
('38.445-206', 'Rua Vera Lúcia Mamede Ferreira', 'Araguari', 'MG', 'Sibipiruna'),
('69.086-428', 'Beco B 3', 'Manaus', 'AM', 'Gilberto Mestrinho'),
('69.035-381', 'Rua Nova', 'Manaus', 'AM', 'Compensa');

INSERT INTO Fornecedores (CEP, Nome, CNPJ) VALUES 
( '02.873-380', 'Laboratório Barellos', '82.255.437/0001-30'),
( '08.771-160', 'Empreendimentos Leonicio', '01.108.854/0001-59'),
( '17.066-754', 'Comércio Texeira', '93.124.988/0001-81'),
('12.092-813', 'Posto Farias', '54.309.741/0001-88'),
('69.086-428', 'Empreendimentos Trancoso', '57.844.182/0001-02'),
('69.035-381', 'Varejo Castro', '36.966.612/0001-80'),
('28.920-234', 'Varejo Uchôa', '16.386.334/0001-85'),
('38.445-206', 'Indústria Mozer', '12.817.768/0001-31'),
('24.440-170', 'Varejo Vilela', '78.993.873/0001-30'),
('15.057-425', 'Indústria Barreto', '54.265.118/0001-70');

INSERT INTO Pessoa( CPF, Nome, Data_Nasc, Sexo) VALUES
('778.173.668-02', 'Gabrielle Linhares Firmino Augusto',	'2003-05-16', 'F'),
('201.746.869-00', 'Kamilla Louzano de Souza Macedo', '1982-02-21', 'F'),
('056.018.462-00', 'Carlos Luis Salomão Simoes Negris', '1968-10-09', 'M'),
('654.948.988-14', 'Everaldo Augusto Sarmanto Manhães Nelson Montilla Silva Bragança', '1984-08-21', 'M'),
('138.584.484-19', 'Pietir Valente Monteiro Pereira', '1984-08-13', 'M'),
('635.575.775-97', 'Yvan Araujo Barboza Ramos', '1996-04-02', 'M'),
('285.628.341-14', 'Raphael Araujo Valladares Bilé',	'1987-07-20', 'M'),
('579.678.360-22', 'Miguel Pontes Pires Bilé', '2002-11-12', 'M'),
('638.542.857-52', 'Júlio Luiz Malaquias Venancio Almeida', '1992-10-24', 'M'),
( '363.316.156-28', 'Valeska Heizelmann Xavier da Paixão', '1979-03-22', 'F');

INSERT INTO Funcionario (CodPessoa, Salario, Cargo) VALUES
(3,	3000, 'Gerente'),
(4,	2860, 'Entregador'),
(5,	4850, 'Técnico'),
(7,	2559, 'Entregador');


INSERT INTO Caixa (Data_fechamento) VALUES
( '2022-01-01'),
( '2022-02-01'),
( '2022-03-01'),
( '2022-04-01'),
( '2022-05-01'),
( '2022-06-01'),
( '2022-07-01'),
( '2022-08-01'),
( '2022-09-01'),
( '2022-10-01'),
( '2022-11-01'),
( '2022-12-01');

INSERT INTO Servico (Descricao) VALUES
('Venda de Produto'),
('Reparo de computador'),
('Formatação'),
('Orçamento'),
('Troca de Disco rígido'),
('Limpeza de computador');


INSERT INTO Realizado_por(CodPessoa, CodServico) VALUES
(4,	1),
(5,	2),
(5,	3),
(4,	4),
(5,	5),
(5,	6);

INSERT INTO Cliente(CodPessoa, Obs, Debitos) VALUES
(1,	NULL, NULL),
(2,	NULL, NULL),
(6,	NULL, NULL),
(8,	'Não realizou o pagamento do orçamento no dia previsto. Entrar em contato novamente para o acerto do débito em questão', 350),
(9,	NULL, NULL),
(10, NULL, NULL);

INSERT INTO Contato( Cel, Email, Tel, CodPessoa, CodForn) VALUES
( '(14) 98716-3281', 'lorene_burns@protonmail.com', '(14) 3898-6138',	1, NULL),
('(13) 98082-4605', 'su_philip@outlook.com',	'(13) 3814-2341', 2, NULL),
('(16) 98598-3206', 'tawana_allan@aol.com', '(12) 3528-6341', 3, NULL),
('(12) 97235-9727', 'kina_croft@hotmail.com', '(11) 3256-0389', 4, NULL),
('(11) 98055-7281', 'courtney_john@zohomail.com', '(14) 3648-1814', NULL, 1),
('(16) 97935-8186',	'dion_lees@outlook.com', '(14) 3026-6364', NULL, 2),
('(11) 98861-5768',	'marsha_dickens@zohomail.com',	'(16) 3631-5648', NULL,	3),
('(14) 99541-5710',	'robbin_leonard@gmail.com',	'(14) 3822-5016', 5, NULL),
('(12) 99626-1876',	'daphne_price@zohomail.com', '(19) 3673-2617',	6,	NULL),
( '(14) 98146-5310',	'shelia_rigby@hotmail.com',	'(13) 3286-3127', NULL,	4),
( '(21) 3249-7773',	'vernita_mac@outlook.com',	'(12) 2731-2270', NULL,	5),
( '(16) 98544-7178',	'latanya_drummond@gmail.com', '(13) 2953-3854',	7, NULL),
( '(16) 98544-7878',	'fae_stephens@mail.com', '(17) 2467-9177', 8, NULL),
( '(14) 99731-4555',	'barton_skinner@aol.com', '(12) 2838-2128',	9,	NULL),
( '(11) 99688-1137', 'leone_lee@zohomail.com', '(12) 2838-2118',	10,	NULL),
( '(13) 99468-4671',	'dori_lennon@protonmail.com', '(12) 2838-2118',	NULL, 6),
( '(22) 98270-6605',	'kristy_penn@outlook.com', '(16) 2894-6720', NULL,	7),
( '(24) 98729-2483',	'waldo_hough@gmail.com', '(21) 3334-2674', NULL, 8),
( '(22) 97938-1221',	'lashell_macdonald@protonmail.com',	'(21) 2708-1881', NULL,9),
( '(21) 98309-5989',	'ardella_stevenson@yahoo.com', '(21) 3249-7773', NULL, 10);

INSERT INTO Produto(CodProd, Nome, Categoria, Custo, Variacoes, Unidade, Marca, CodForn, ValorVenda) VALUES
(1,	'Carregador 20W USB-C',	'Carregadores',	31.9, NULL,	'Unidade',	'Apple', 1, 159.5),
(2,	'Cabo Lightning', 'Cabos', 15,	'1 mt',	'Unidade',	'Apple', 2, 75),
(3,	'Cabo Lightning',	'Cabos',	20,	'2 mt',	'Unidade',	'Apple',	3, 100),
(4,	'Cabo Lightning USB-C',	'Cabos',	15,	'1 mt',	'Unidade',	'Apple',	4, 75),
(5,	'Cabo Lightning USB-C',	'Cabos',	20,	'2 mt',	'Unidade',	'Apple',	5, 100),
(6,	'Fone Lightning',	'Fones',	68,	NULL,	'Unidade',	'UGREEN GROUP LIMITED',	6, 340),
(7,	'Cabo Usb-C',	'Cabos',	11.36,	NULL,	'Unidade',	'Samsung',	7, 58.8),
(8,	'Cabo Usb-C',	'Cabos',	13.93,	NULL,	'Unidade',	'Samsung',	8, 69.65),
(9,	'Capinha Silicone IPhone 6-12',	'Capinhas',	13,	'Transparente',	'Unidade',	'',	9, 65),
(10, 'Carregador MagSafe',	'Carregadores',	56.2,	NULL,	'Unidade',	'Apple',	10, 281),
(11, 'GTX1080', 'Placa de Video', 560, NULL, 'Unidade', 'NVidia', 4, 2800),
(12, 'SSD Kingston 480GB', 'SSD', 50, NULL, 'Unidade', 'Kingston', 8, 250),
(13, 'HD 1TB', 'HD', 300, 'Externo', 'Unidade', 'Seagate', 3, 1500),
(14, 'RTX 3050EX', 'Placa de Video', 500, NULL, 'Unidade', 'Nvidia', 4, 2500);

INSERT INTO Estoque_Produto (Data_Adicionado, Qtd_Estoque, CodProd) VALUES
('2022-01-05', 5,  1),
('2022-01-10', 10, 12),
('2022-01-20', 10, 4),
('2022-01-30', 10, 8),
('2022-02-28', 10, 10),
('2022-02-28', 3, 14),
('2022-03-25', 2, 13),
('2022-03-30', 5, 6),
('2022-04-29', 15, 9),
('2022-04-29', 10, 3);

INSERT INTO Pedido_Cliente (Mtd_Pagamento, Obs, Valor, CodServico, CodCaixa, CodPessoa) VALUES
('Debito',	NULL,	500,	1,	1,	1),
('Debito',	NULL,	1000,	2,	1,	2),
('Debito',	NULL,	4250,	1,	1,	2),
('Dinheiro',	NULL,	150,	1,	1,	6),
('Credito',	NULL,	680,	1,	2,	8),
('Dinheiro',	NULL,	900,	5,	2,	9),
('Credito',	NULL,	350,	6,	2,	10);

INSERT INTO Compra_Cliente (CodPedidoC, CodEst, DataPedido, Quantidade) VALUES
(1, 1, '2022-02-03', 2),
(3, 2, '2022-03-18', 1),
(3, 7, '2022-03-18', 1),
(3, 6, '2022-03-18',1),
(4,3,'2022-05-15', 2),
(5, 8, '2022-06-16', 2);


INSERT INTO Pedido_Loja (Valor, DataPedido, CodCaixa) VALUES
(3297.5, '2022-01-01', 1),
(750,	'2022-01-10',	1),
(696.5,	'2022-01-20',	1),
(10310, '2022-02-25',	2),
(3000,	'2022-03-13',	3),
(1700,	'2022-03-26',	3),
(1975,	'2022-04-20',	4);

INSERT INTO Compra_Loja(CodProd, CodPedidoL, DataEntrega, Quantidade) VALUES
(1, 1, '2022-01-05', 5),
(12, 1, '2022-01-10', 10),
(4, 2, '2022-01-20', 10),
(8, 3, '2022-01-30', 10),
(10, 4, '2022-03-1', 10),
(14, 4, '2022-03-1', 3),
(13, 5, '2022-03-25', 2),
(6, 6, '2022-03-30', 5),
(9, 7, '2022-04-29', 15),
(3, 7, '2022-04-29', 10);
