CREATE TRIGGER after_insert_client
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (mensagem) VALUES (CONCAT('Mensagem inserida as:', NOW()));
END;


CREATE TRIGGER before_delete_client
BEFORE DELETE ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (mensagem) VALUES (CONCAT('Tentativas de excluir: ', OLD.nome));
END;


CREATE TRIGGER after_update_client
AFTER UPDATE ON Clientes
FOR EACH ROW
BEGIN
INSERT INTO Auditoria (mensagem) VALUES ('Tentativas de atualização: ');
    ELSE
INSERT INTO Auditoria (mensagem) VALUES (CONCAT('Nome do cliente atualizado: "', OLD.nome, '" para "', NEW.nome, '"'));
    END IF;
END;



