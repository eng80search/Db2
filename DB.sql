--  �T�v�F�e�X�g�p�f�[�^���쐬����B
--  DB�ڑ�
connect to ssdb user ssdbuser using File1Net
--  �����f�[�^���폜
TRUNCATE TABLE T_W_CASE_BULK_IMPORT IMMEDIATE

--  �f�[�^�����m�F
SELECT * FROM T_W_CASE_BULK_IMPORT

--  ���[�N�e�[�u���f�[�^��CSV�`���ŕۑ�����B(�e�X�g�P�[�X�ς��x�ɏo�̓t�@�C����ύX)
--  EXPORT TO  D:\Share\WorkTableExport\db40.csv OF DEL SELECT * FROM T_W_CASE_BULK_IMPORT


-- �`�F�b�N�p�N�G��
-- ���O�����F�g�p����Ă���X�܂�L���ɂ���
--  UPDATE T_M_TENPO SET YUKO_FLG = 1 ,DEL_FLG = 0 WHERE TENP_CD IN ('001','002','003','101')
--  SELECT 'Check: �L���t���O1�̓X��',   COUNT(*) AS COUNT FROM T_M_TENPO WHERE YUKO_FLG = 1 AND TENP_CD = '003'
--  SELECT 'Check: ��v�ґ��݌���',   COUNT(*) AS COUNT FROM T_BASE_JUEKI WHERE JYUEKI_TENP_NO_CIF = '003' AND CONCAT(SUBSTR(JYUEKI_SETAI_NO, 3, 6), JYUEKI_MEIGI_NO) = '01234561' AND JYUEKI_KINSHIN_KOZA_NO = '03456789'

-- �e�[�u���ꗗ��\������
-- list tables

-- EXPORT TO  D:\Share\WorkTableExport\t_base_jueki.csv OF DEL SELECT * FROM T_BASE_JUEKI
-- ��v�ҏ��ꗗ��\������B
-- select * from T_BASE_JUEKI WHERE where 

-- �e�[�u��������o�͂���B
-- DESCRIBE TABLE T_BASE_JUEKI 

-- DB2 Update��
--UPDATE T_M_TENPO SET DEL_FLG = 1 WHERE TENP_CD IN ('001')

