--  概要：テスト用データを作成する。
--  DB接続
connect to ssdb user ssdbuser using File1Net

--  明細一括ワークテーブルを出力
--  EXPORT TO  D:\work\ri\T_W_MEISAI_BULK_IMPORT.csv OF DEL SELECT * FROM T_W_MEISAI_BULK_IMPORT

--  T_M_TENPO出力
EXPORT TO  D:\work\ri\T_M_TENPO.csv OF DEL SELECT * FROM T_M_TENPO

--  T_BASE_JUEKI出力
EXPORT TO  D:\work\ri\T_BASE_JUEKI.csv OF DEL SELECT * FROM T_BASE_JUEKI
