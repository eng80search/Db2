--  概要：テスト用データを作成する。
--  DB接続
connect to ssdb user ssdbuser using File1Net
--  既存データを削除
TRUNCATE TABLE T_W_CASE_BULK_IMPORT IMMEDIATE

--  データ件数確認
SELECT * FROM T_W_CASE_BULK_IMPORT

--  ワークテーブルデータをCSV形式で保存する。(テストケース変わる度に出力ファイルを変更)
--  EXPORT TO  D:\Share\WorkTableExport\db40.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT


-- チェック用クエリ
-- 事前準備：使用されている店舗を有効にする
--  UPDATE T_M_TENPO SET YUKO_FLG = 1 ,DEL_FLG = 0 WHERE TENP_CD IN ('001','002','003','101')
--  SELECT 'Check: 有効フラグ1の店番',   COUNT(*) AS COUNT FROM T_M_TENPO WHERE YUKO_FLG = 1 AND TENP_CD = '003'
--  SELECT 'Check: 受益者存在件数',   COUNT(*) AS COUNT FROM T_BASE_JUEKI WHERE JYUEKI_TENP_NO_CIF = '003' AND CONCAT(SUBSTR(JYUEKI_SETAI_NO, 3, 6), JYUEKI_MEIGI_NO) = '01234561' AND JYUEKI_KINSHIN_KOZA_NO = '03456789'

-- テーブル一覧を表示する
-- list tables

-- EXPORT TO  D:\Share\WorkTableExport\t_base_jueki.csv OF DEL SELECT * FROM T_BASE_JUEKI
-- 受益者情報一覧を表示する。
-- select * from T_BASE_JUEKI WHERE where 

-- テーブル列情報を出力する。
-- DESCRIBE TABLE T_BASE_JUEKI 

-- DB2 Update文
--UPDATE T_M_TENPO SET DEL_FLG = 1 WHERE TENP_CD IN ('001')

