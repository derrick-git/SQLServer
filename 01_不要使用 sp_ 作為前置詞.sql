/*=========================================================

	�w��J�GSQL Server �ǲߵ��O
	http://sharedderrick.blogspot.com/

=========================================================*/

/* �R�W�w�s�{��
��ĳ�z���n�ϥ� sp_ �@���e�m���A�ӫإߥ���w�s�{�ǡC
SQL Server �|�ϥ� sp_ �e�m���ӫ��w�t�ιw�s�{�ǡC

�z��ܪ��W�٥i��P�Y�ǥ��Ӫ��t�ε{�ǲ��ͽĬ�C

�p�G�z�����ε{���ϥΫD��Ƶ��c�X�檺�W�ٰѷӡA�ӱz�֦����{�ǦW�٩M�t�ε{�ǦW�٬۽Ĭ�A�z�����ε{���N�|���_�A�]���W�ٷ|�p����t�ε{�ǦӫD�z���{�ǡC

�P�t�ιw�s�{�Ǫ��W�٬ۦP�B�D���w�άO�b dbo ���c�y�z�����ϥΪ̦ۭq�w�s�{�ǡA�N�û����|����A�Ϧӷ|�û�����t�ιw�s�{��

�H sp_ �r���}�Y���t�ιw�s�{�ǡC
���̹�ڤW�O�x�s�b�귽��Ʈw���A���b�޿�W�|�X�{�b Microsoft SQL Server ������餤�C�Өt�ΩM�ϥΪ̦ۭq��Ʈw�� sys ���c�y�z���C
�t�ιw�s�{�ǥi�H�q�����Ʈw������A�������㭭�w�w�s�{�Ǫ��W�١C
*/

/*=========================================================*/

/* sp_who (Transact-SQL) 
���� Microsoft SQL Server Database Engine ������餤�����ثe�ϥΪ̡B�u�@���q�M�B�z�Ǫ���T�C
�z�i�H�z���T�A�u�Ǧ^�ݩ�S�w�ϥΪ̩��ݩ�S�w�u�@���q���D���m�B�z�ǡC
*/
USE Northwind_Dev
GO
EXEC sp_who
GO

/*=========================================================*/

-- �إ߻P�P�t�ιw�s�{�Ǫ��W�٬ۦP���ϥΪ̦ۭq�w�s�{��

CREATE PROC sp_who
AS
	SELECT LastName, City
	FROM dbo.Employees
GO

-- �û�����t�ιw�s�{��
EXEC sp_who
GO

-- �û����|����ϥΪ̦ۭq�w�s�{��
EXEC Northwind_Dev.dbo.sp_who
GO