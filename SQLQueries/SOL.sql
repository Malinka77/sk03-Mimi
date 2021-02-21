-- 1. Брой на потребители.
SELECT Count(*)FROM users;
-- 2. Най-стария потребител.
SELECT * FROM users ORDER BY birthDate ASC Limit 1;
-- 3. Най-младия потребител.
SELECT * FROM users ORDER BY birthDate DESC Limit 1;
-- 4. Колко юзъра са регистрирани с мейли от abv и колко от gmail и колко с различни от двата.
SELECT count(*)FROM users WHERE email like'%abv%';
SELECT count(*)FROM users WHERE email like'%gmail%';
SELECT count(*)FROM users WHERE Not email like ('%abv%' and '%gmail%');
-- 5. Кои юзъри са banned.
SELECT * FROM users WHERE isBanned=1;
-- 6. Изкарайте всички потребители от базата като ги наредите по име в азбучен ред и дата на раждане(от най-младия към най-възрастния).
SELECT username,birthDate FROM users ORDER BY username ASC;
-- 7.Изкарайте всички потребители от базата, на които потребителското име започва с a.
SELECT * FROM users WHERE username LIKE 'a%';
-- 8.Изкарайте всички потребители от базата, които съдържат а username името си.
SELECT * FROM users WHERE username LIKE '%a%';
-- 9.Изкарайте всички потребители от базата, чието име се състои от 2 имена.
SELECT * FROM users  WHERE username LIKE '%firstname,lastname%';
-- 10.Регистрирайте 1 юзър през UI-а и го забранете след това от базата.
-- 11.Брой на всички постове.
SELECT Count(*)FROM posts;
-- 12.Брой на всички постове групирани по статуса на post-a.
SELECT Count(*)FROM posts GROUP BY postStatus;
-- 13. Намерете поста/овете с най-къс caption.
SELECT * FROM posts WHERE caption=1;
-- 14. Покажете поста с най-дълъг caption.
SELECT * FROM posts WHERE caption=0;
-- 15. Кой потребител има най-много постове. 
SELECT * FROM users WHERE posts=0;
-- 24. Покажете всички постове и коментарите им ако имат такива.
SELECT posts,comments FROM users;


