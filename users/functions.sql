-- SELECT count(id) FROM users;
-- SELECT max(id) FROM users;
-- SELECT min(id) FROM users;
-- SELECT round(1.83);
-- SELECT ceil(random() * 10);


-- SELECT length(trim('  dsfdsf'));
-- SELECT upper(trim('  dsfdsf'));
-- SELECT loser(trim('  dsfdDFsf'));

-- SELECT replace('adsfasdf', 'a', '_');
-- SELECT reverse('abcdefg');
-- SELECT md5('abcdefg');
-- SELECT now();

INSERT INTO ages SELECT id, name FROM users;