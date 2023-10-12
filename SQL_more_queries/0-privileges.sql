-- Write a script that lists all privileges of the MySQL users user_0d_1 and user_0d_2 on your server (in localhost).
SELECT
    *
FROM
    mysql.user
WHERE
    user = 'user_0d_1'
    OR user = 'user_0d_2';

SHOW GRANTS FOR 'user_0d_1' @'localhost';

SHOW GRANTS FOR 'user_0d_2' @'localhost';