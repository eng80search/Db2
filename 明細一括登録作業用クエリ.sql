--  DB接続
connect to ssdb user ssdbuser using File1Net

--  作業用クエリ
TRUNCATE TABLE T_W_MEISAI_BULK_IMPORT IMMEDIATE
select count(*) as "T_W_MEISAI_BULK_IMPORT IMMEDIATE" from T_W_MEISAI_BULK_IMPORT IMMEDIATE

--  確認書審査結果データをクリア
delete from T_D_GAIYO where BUNSITU_KANRI_NUM like '20190207P%'
select count(*) as "T_D_GAIYO" from T_D_GAIYO where BUNSITU_KANRI_NUM like '20190207P%'

--  領収書審査結果データをクリア
delete from T_D_MEISAI where BUNSITU_KANRI_NUM like '20190207P%'
select count(*) as "T_D_MEISAI"  from T_D_MEISAI where BUNSITU_KANRI_NUM like '20190207P%'

