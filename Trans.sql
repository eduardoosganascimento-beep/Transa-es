
CREATE TABLE contas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  titular VARCHAR(50),
  saldo DECIMAL(10,2)
) ;

INSERT INTO contas (titular, saldo) VALUES
  ('Ana', 1000.00),
  ('Carlos', 500.00);

SELECT * FROM contas;

START TRANSACTION;

UPDATE contas SET saldo = saldo - 300 WHERE titular = 'Ana';
UPDATE contas SET saldo = saldo + 300 WHERE titular = 'Carlos';

SELECT * FROM contas;
COMMIT;
SELECT * FROM contas; 

START TRANSACTION;

UPDATE contas SET saldo = saldo - 200 WHERE titular = 'Carlos';
UPDATE contas SET saldo = saldo + 200 WHERE titular = 'Ana';

SELECT * FROM contas;
ROLLBACK;
SELECT * FROM contas;  
