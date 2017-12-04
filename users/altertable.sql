--  удалить поле
ALTER TABLE IF EXISTS users DROP COLUMN mood;
-- ALTER TABLE IF EXISTS users DROP COLUMN hood;
--  добавить поле
ALTER TABLE users 
ADD COLUMN mood
VARCHAR(255) NOT NULL DEFAULT ':D';
--  переименовать поле
-- ALTER TABLE users
-- RENAME mood TO hood;
--  cменить значение по-умолчанию
-- ALTER TABLE users 
-- ALTER COLUMN mood 
-- SET DEFAULT ':(';

-- добавить/удалить constraint NOT NULL
ALTER TABLE users
ALTER COLUMN mood DROP NOT NULL;

-- переименовать таблицу
-- ALTER TABLE users RENAME TO heroes;