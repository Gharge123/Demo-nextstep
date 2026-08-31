-- Next Step: clients_img_update.sql
-- Run this AFTER the existing Next Step database SQL.

USE nextstep;

-- Rename the existing name column to clients_img
ALTER TABLE clients
CHANGE COLUMN name clients_img VARCHAR(500) DEFAULT '';

-- Add/update client image paths
UPDATE clients SET clients_img = 'assets/images/clients/client-1.png' WHERE id = 1;
UPDATE clients SET clients_img = 'assets/images/clients/client-2.png' WHERE id = 2;
UPDATE clients SET clients_img = 'assets/images/clients/client-3.png' WHERE id = 3;
UPDATE clients SET clients_img = 'assets/images/clients/client-4.png' WHERE id = 4;
UPDATE clients SET clients_img = 'assets/images/clients/client-5.png' WHERE id = 5;
UPDATE clients SET clients_img = 'assets/images/clients/client-6.png' WHERE id = 6;
UPDATE clients SET clients_img = 'assets/images/clients/client-7.png' WHERE id = 7;
UPDATE clients SET clients_img = 'assets/images/clients/client-8.png' WHERE id = 8;

-- Verify
SELECT id, clients_img, status, sort_order
FROM clients
ORDER BY sort_order;