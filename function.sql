DELIMITER $$

CREATE FUNCTION ContarClientesPorDia(data DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    
    SELECT COUNT(*) INTO totalClientes
    FROM Clientes
    WHERE DATE(DataCadastro) = data;

    RETURN totalClientes;
END$$

DELIMITER ;

SELECT ContarClientesPorDia('2024-10-16') AS ClientesCadastrados;
