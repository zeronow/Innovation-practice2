CREATE TABLE chuangxinshijian( 
userid NVARCHAR(MAX), 
agerange NVARCHAR(MAX), 
gender NVARCHAR(MAX) 
) 

BULK INSERT chuangxinshijian
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format1\data_format1\user_info_format1.csv'
WITH(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)
SELECT * FROM chuangxinshijian

