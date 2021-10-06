- Get comma separated column names of a table in a string

DECLARE @Chars VARCHAR(MAX)
SELECT @Chars = ISNULL(@Chars + ', ' +COLUMN_NAME, COLUMN_NAME)   
FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='FOO'
SELECT @Chars
