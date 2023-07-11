
DELIMITER $$
CREATE TRIGGER Atualiza_Valor_Venda 
BEFORE INSERT ON produto FOR EACH ROW 
BEGIN
    SET NEW.ValorVenda = (NEW.Custo * 1.5);
END

$$ 
DELIMITER ;

DELIMITER $$
CREATE TRIGGER Atualiza_Estoque_Compra_Pedido_Loja
AFTER INSERT ON compra_loja
FOR EACH ROW
BEGIN
DECLARE custo FLOAT;
SELECT custo INTO custo FROM produto WHERE CodProd=NEW.CodProd;
IF NOT EXISTS (SELECT * FROM estoque_produto WHERE CodProd = NEW.CodProd) THEN
	INSERT INTO estoque_produto(CodProd, Qtd_Estoque, Data_Adicionado)
	VALUES (NEW.CodProd, NEW.Quantidade, NEW.DataEntrega);
	ELSE
	UPDATE estoque_produto
	SET Qtd_Estoque = Qtd_Estoque + NEW.Quantidade, Data_Adicionado = NEW.DataEntrega
	WHERE CodProd = NEW.CodProd;
END IF;

UPDATE pedido_loja
SET Valor = Valor + (Custo * NEW.Quantidade)
WHERE CodPedidoL = NEW.CodPedidoL;
END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER Atualiza_Estoque_Venda_Pedido_Cliente
AFTER INSERT ON compra_cliente
FOR EACH ROW
BEGIN
UPDATE Estoque_Produto
SET Qtd_Estoque = Qtd_Estoque - NEW.Quantidade
WHERE CodEst = NEW.CodEst;
UPDATE Pedido_Cliente
SET Valor = Valor + (SELECT ValorVenda FROM Produto WHERE CodEst = NEW.CodEst) * NEW.Quantidade
WHERE CodPedidoC = NEW.CodPedidoC;
end
$$
DELIMITER ;