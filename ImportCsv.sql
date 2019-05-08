--  概要：テスト用データを作成する。
--  DB接続
connect to ssdb user ssdbuser using File1Net
--  既存データを削除
TRUNCATE TABLE T_W_CASE_BULK_IMPORT IMMEDIATE
--  CSVファイルをDBにインポートする（テスト項目ごとにコメントを外す）
--  IMPORT FROM D:\work\ri\Case2.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
--  IMPORT FROM D:\work\ri\Case3.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
--  IMPORT FROM D:\work\ri\Case4.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
--  IMPORT FROM D:\work\ri\Case5.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
--  IMPORT FROM D:\work\ri\Case6.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
--  IMPORT FROM D:\work\ri\Case7.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT
IMPORT FROM D:\work\ri\Case8.csv of del modified by delprioritychar insert into T_W_CASE_BULK_IMPORT

--  EXPORT TO  D:\work\ri\db2.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
--  EXPORT TO  D:\work\ri\db3.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
--  EXPORT TO  D:\work\ri\db4.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
--  EXPORT TO  D:\work\ri\db5.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
--  EXPORT TO  D:\work\ri\db6.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
--  EXPORT TO  D:\work\ri\db7.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
EXPORT TO  D:\work\ri\db8.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT
