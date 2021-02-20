-- 1. Брой на потребители.
SELECT Count(*)FROM users;
-- 2. Най-стария потребител.
SELECT * FROM users ORDER BY birthDate ASC Limit 1
-- 3. Най-младия потребител.
SELECT * FROM users ORDER BY birthDate DESC Limit 1
-- 4. Колко юзъра са регистрирани с мейли от abv и колко от gmail и колко с различни от двата.
SELECT count(*)FROM users WHERE email like'%abv%';
SELECT count(*)FROM users WHERE email like'%gmail%';
SELECT count(*)FROM users WHERE Not email like ('%abv%' and '%gmail%');
-- 5. Кои юзъри са banned.
SELECT * FROM users WHERE isBanned=1
-- 6. Изкарайте всички потребители от базата като ги наредите по име в азбучен ред и дата на раждане(от най-младия към най-възрастния).






