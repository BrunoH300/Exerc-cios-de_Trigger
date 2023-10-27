CREATE TRIGGER after_insert_client
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (mensagem) VALUES (CONCAT('Mensagem inserida as:', NOW()));
END;

