-- Create a temporary table to hold the column descriptions
CREATE TEMPORARY TABLE temp_description AS
    SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';

-- Print the column descriptions
SELECT CONCAT(
    COLUMN_NAME, ' ', COLUMN_TYPE,
    IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
    IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''),
    IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
    IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
) AS description
FROM temp_description;
