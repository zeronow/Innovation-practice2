CREATE TABLE sample_submission( 
userid NVARCHAR(MAX), 
merchantid NVARCHAR(MAX), 
prob NVARCHAR(MAX) 
) 

BULK INSERT sample_submission
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\sample_submission.csv'
WITH(
    FIELDTERMINATOR = ',',  	
    --ROWTERMINATOR = '\r\n'
	--ROWTERMINATOR = '0x0d'
	ROWTERMINATOR = '0x0a'    	
)

SELECT * FROM sample_submission
DELETE FROM sample_submission


##########################################
CREATE TABLE test_format1( 
userid NVARCHAR(MAX), 
merchantid NVARCHAR(MAX), 
prob NVARCHAR(MAX) 
) 

BULK INSERT test_format1
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format1\data_format1\test_format1.csv'
WITH(
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)

SELECT * FROM test_format1

##########################################
CREATE TABLE train_format1( 
userid NVARCHAR(MAX), 
merchantid NVARCHAR(MAX), 
lable NVARCHAR(MAX)  
) 

BULK INSERT train_format1
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format1\data_format1\train_format1.csv'
WITH(
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)

SELECT * FROM train_format1
DELETE FROM train_format1
##############################################
CREATE TABLE user_info_format1(
userid NVARCHAR(MAX),
agerange NVARCHAR(MAX),
gender NVARCHAR(MAX)
)
BULK INSERT user_info_format1
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format1\data_format1\user_info_format1.csv'
WITH(
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)
SELECT * FROM user_info_format1
--出现插入乱序(第248行在第一行显示）
SELECT userid,agerange,gender
FROM user_info_format1
WHERE userid='user_id';

SELECT userid,agerange,gender
FROM user_info_format1
WHERE userid='376517';

DELETE FROM user_info_format1
##############################################
CREATE TABLE user_log_format1(
userid NVARCHAR(MAX),
itemid NVARCHAR(MAX),
catid NVARCHAR(MAX),
sellerid NVARCHAR(MAX),
brandid NVARCHAR(MAX),
time_stamp NVARCHAR(MAX),
actiontype NVARCHAR(MAX)
)
BULK INSERT user_log_format1
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format1\data_format1\user_log_format1.csv'
WITH(
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)--18:21

SELECT * FROM user_log_format1 --11:27

SELECT userid,itemid,catid
FROM user_log_format1
WHERE userid='328862';


##############################################
CREATE TABLE train_format2(
USERID NVARCHAR(MAX),
AGERANGE NVARCHAR(MAX),
GENDER NVARCHAR(MAX),
MERCHANTID NVARCHAR(MAX),
LABEL NVARCHAR(MAX),
ACTIVITYLOG NVARCHAR(MAX)
)

BULK INSERT train_format2
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format2\data_format2\train_format2.csv'
WITH(
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '0x0a'
)--3:21

SELECT * FROM train_format2 --2:05
#############################################
CREATE TABLE test_format2(
USERID NVARCHAR(MAX),
AGERANGE NVARCHAR(MAX),
GENDER NVARCHAR(MAX),
MERCHANTID NVARCHAR(MAX),
LABEL NVARCHAR(MAX),
ACTIVITYLOG NVARCHAR(MAX)
)

BULK INSERT test_format2
FROM 'F:\GitHub\Repeat-Buyers-Prediction\Data\data_format2\data_format2\test_format2.csv'
WITH(
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '0x0a'
)-3:35

SELECT * FROM test_format2 --1:55
--'0x0a'与'0x0d'的区别
--回车 代码：CR ASCII码：\r，十六进制，0x0d，回车的作用只是移动光标至该行的起始位置
--换行 代码：LF ASCII码：\n，十六进制，0x0a，换行至下一行行首起始位置；
--从滚筒打印机的角度来理解
--换行就是把滚筒卷一格，不改变水平位置。
--回车就是把水平位置复位，不卷动滚筒
--我遇到的问题是'0x0a'与'\n'，这两都是换行，但是导入结果不同?



--使用查询来发现规律
--
--
--








