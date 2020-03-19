SELECT e.* FROM ETL_CMM_EXC_RST e FETCH FIRST 10 rows ONLY
SELECT * FROM HDMS.CMBCTLNK  FETCH FIRST 10 rows ONLY
 
SELECT * FROM sysibm.sysdummy1  FETCH FIRST 10 rows ONLY

SELECT * FROM HDMS.M_LOANCOUNT FETCH FIRST 10 rows ONLY



SELECT  
        EMPNAME,
        SYS_EMPLOYEE.ORGID as 机构编号 ,
        SYS_EMPLOYEE.EMPCODE as 营销代号
 FROM HDMS.SYS_EMPLOYEE 
 
 
 
 
 SELECT * from HDMS.SYS_EMPLOYEE 
 
 select * from HDMS.SYS_ORGANIZATION n

SELECT  
        e.EMPNAME,
        n.ORGCODE as 机构号,
        e.EMPCODE as 营销代号
 FROM HDMS.SYS_EMPLOYEE e
 LEFT JOIN HDMS.SYS_ORGANIZATION n ON e.ORGID=n.ORGID




SELECT e.EMPNAME ,e.GENDER,e.BIRTHDATE,e.USERNAME,e.CARDNO from HDMS.SYS_EMPLOYEE e FETCH FIRST 10 rows ONLY

SELECT * from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
HDMS.JX_EMP_PROFIT_SHARING 
SELECT * from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 50 rows ONLY


A207_CURR
sys_employee
SYS_PROC_LOG
SELECT * from HDMS.SYS_PROC_LOG  FETCH FIRST 50 rows ONLY
 sysibm.sysdummy1;
SELECT * from sysibm.sysdummy1  FETCH FIRST 50 rows ONLY

  select  * from  hdms.ETL_CMSYSHIS FETCH FIRST 10 rows ONLY
 select   to_char(to_date(exc_date,'yyyy-mm-dd'),'YYYY-MM-DD')  into batchdata  from sysibm.sysdummy1;--
  select  days(to_date(CM_TX_DT,'yyyymmdd')) from  hdms.ETL_CMSYSHIS

ETL_CMM_EXC_RST







SELECT to_char(to_date(a.da,'yyyymmdd'),'yyyy-mm-dd')  
FROM (
SELECT substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2) as da FROM hdms.ETL_CMSYSHIS FETCH FIRST 10 rows ONLY
) a

 select   to_char(to_date(CM_TX_DT,'yyyy-mm-dd'),'YYYY-MM-DD') from  hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY

SELECT VALUE(DESCR,'0')  from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT nvl(DESCR,'')  from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT nvl2(DESCR,'1','2')  from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT nvl2(EXC_DATE,'1','2')  from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT VALUE(EXC_DATE,'')  from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT dec(90) from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 50 rows ONLY
SELECT CONCAT('chr','yl') from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT replace('chryl','c','zz') from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT CAST(CURRENT_DATE as CHAR(4)) from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT CURRENT_DATE from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT CAST(BALAMT AS DECIMAL(10,1)) from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT DEC(BALAMT,10,5) from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 10 rows ONLY
SELECT DATE(CM_TX_DT)   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT to_char(DATE('2015-01-05'),'yyyy-mm')   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT date(to_date(CM_TX_DT,'yyyy-mm-dd'))  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT DAYS(date(to_date(CM_TX_DT,'yyyy-mm-dd')))  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT to_date(CM_TX_DT,'yyyy-mm-dd')  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT to_char(to_date(CM_TX_DT,'yyyy-mm-dd'))  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT to_char(to_date(CM_TX_DT,'yyyy-mm-dd'),'yyyy-mm-dd')  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT date(to_date(CM_TX_DT,'yyyy-mm-dd'))  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT date(to_date(CM_TX_DT,'yyyy-mm-dd')) -1 DAY  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT date(to_date(CM_TX_DT,'yyyy-mm-dd')) -1 DAYS  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT DAYS(date(to_date(CM_TX_DT,'yyyy-mm-dd')))/365  from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT to_char(DATE('2015-01')-1days,'yyyymmdd')   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT DATE('2015-06-20 15:36:22.1515165')   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT TIME('2015-06-20 15:36:22.1515165')   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
SELECT TIMESTAMP('2015-06-20 15:36:22.1515165')   from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY

SELECT * from hdms.ETL_CMSYSHIS  FETCH FIRST 10 rows ONLY
HDMS.JX_EMP_PROFIT_SHARING 
SELECT * from HDMS.JX_EMP_PROFIT_SHARING  FETCH FIRST 50 rows ONLY


COALESCE   null->0/''
SELECT EMPCODE,COALESCE(( null),0) AS BAL FROM  MIN_TRAFFIC_DEPOSIT_HIS 
SELECT EMPCODE,COALESCE(( null),'') AS BAL FROM  MIN_TRAFFIC_DEPOSIT_HIS 
    	








SELECT e.MONTHDATE,g.EMPCODE,g.EMPNAME,g.EXC_DATE,g.ORGID,
sum(NVL(g.BALAMT,0)) as PROFITBAL,
sum(NVL(g.SCORE,0)) as SCORE,
ROWNUMBER() OVER() AS ROW_ID   --row 递增排序
 FROM HDMS.JX_EMP_PROFIT_SHARING g left join HDMS.JX_ASSESS_SCORE e on g.EMPCODE = e.EMPCODE and e.MONTHDATE=substr(EXC_DATE,1,7) 
 GROUP BY e.MONTHDATE,g.EMPCODE,g.EMPNAME,g.EXC_DATE,g.ORGID


SELECT ORGID,ORGCODE,ORGNAME,decimal(ORGLEVEL,5,2) as ORGLEVEL,PARENTORGID,ORGSEQ FROM  hdms.SYS_ORGANIZATION
group by ORGID,ORGCODE,ORGNAME,ORGLEVEL,PARENTORGID,ORGSEQ
  FETCH FIRST 10 rows ONLY




SELECT ORGID,ORGCODE,ORGNAME,decimal(ORGLEVEL,5,2) as ORGLEVEL,PARENTORGID,ORGSEQ FROM  hdms.SYS_ORGANIZATION
WHERE SYS_ORGANIZATION.ORGLEVEL = 5
  FETCH FIRST 10 rows ONLY

SELECT ORGID,ORGCODE,ORGNAME,decimal(ORGLEVEL,5,2) as ORGLEVEL,PARENTORGID,ORGSEQ FROM  hdms.SYS_ORGANIZATION
WHERE orglevel = 7
  FETCH FIRST 10 rows ONLY











 Code analysis failed with exception: com.intellij.psi.PsiInvalidElementAccessException: Element: class
  com.intellij.psi.impl.source.tree.LeafPsiElement because: different providers: Injected file 't1_account1.jsp' (1b248fa4); 
  JSFileViewProvider{myVirtualFile=VirtualFileWindow in 
  D:\develop\workSpaces_idea\trunk\ycrm\src\main\webapp\WEB-INF\jsp\weidai\loancard\t1_account1.jsp, 
  content=VirtualFileContent{size=7}}(78d755f4)
invalidated at: see attachment; com.intellij.psi.impl.source.tree.LeafPsiElement:JS:VOID_KEYWORD / 
com.intellij.psi.impl.source.tree.CompositeElement:JS:PREFIX_EXPRESSION / 
com.intellij.psi.impl.source.tree.CompositeElement:JS:EXPRESSION_STATEMENT / com.intellij.psi.impl.source.tree.FileElement:FILE









{field:'STATUS',title:'状态',width:80,sortable:'F',
                formatter:function(value,row,index){
                  if (row.status == '0'){
                    return '<span style="color:red;">冻结</span>';
                  } else {
                    return '<span style="color:green;">正常</span>';
                  }
                }
              },








clean package -T 1C -Dmaven.test.skip=true -Dmaven.compile.fork=true


101210-450789-147200



















SELECT
    CM_PROV_COD,
    CMSYS_DB_TIMESTAMP,
    CM_SYS_STS,
    CM_TX_DT,
    CM_TX_DY,
    CM_TX_DY2,
    CM_TX_FD2,
    CM_TX_FD,
  substr(CM_TX_FD,1,6) FIRST_MONTH,
    CM_TX_FIVE,
    MONTH1,
    UPMONTH,
  SUBSTR(UPMONTH,1,4)||'-'||SUBSTR(UPMONTH,5,2) AS UPMONTH1,
    TO_CHAR(DATE(CM_TX_DY2||'-01')- 1 days,'YYYYMMDD') UP_MONTH_END,
  to_char(LAST_DAY(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))-0 months),'yyyy-MM-dd') AS MONTH_END,
    to_char(LAST_DAY(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))-2 months),'yyyyMMdd') AS UP_2MONTH_END,
    to_char(LAST_DAY(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))-3 months),'yyyyMMdd') AS UP_3MONTH_END,
    CM_TX_DY2||'-09'                                   EXC_DY_09,
    CM_TX_DT2,
    CM_MONTH_BEG_DT2,
    CM_MONTH_END_DT2,
    upyear,
  to_char(to_date(CM_PRE_DT,'YYYYMMDD'),'YYYY-MM-DD') CM_PRE_DT,
    TO_CHAR(add_months(to_date(trim(CM_MONTH_END_DT),'YYYYMMDD'),-1),'YYYY-MM-DD') UP_MONTH_END_DATE,
  to_char(LAST_DAY(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))-2 months),'yyyy-MM-dd') AS UP_2MONTH_END_DATE,
  to_char(DATE(substr(CM_MONTH_BEG_DT,1,4)||'-'||substr(CM_MONTH_BEG_DT,5,2)||'-'||substr(CM_MONTH_BEG_DT,7,2))-2 months,'yyyy-MM-dd') AS UP_2MONTH_BEGIN_DATE,
    to_char(LAST_DAY(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))-3 months),'yyyy-MM-dd') AS UP_3MONTH_END_DATE,
    CM_MONTH_BEG_DT,
    ENDYEARDATE,
    EXC_YEAR,
    EXC_DAYS,
  EXC_MONTH_DAYS,
    UP_YEAR_LAST_MONTH,
    UP_YEAR_LAST_DAY,
    UP_YEAR_FIRST_DAY,
    CM_QUA_BEG_DT1,
    CM_QUA_END_DT1,
  to_char(DATE(CM_TX_DT2)-40 days,'yyyyMMdd') AS UP_10DAYS,
    '269' AS ORGLEGAL,
  to_char(DATE(CM_QUA_BEG_DT1)-1 days,'yyyy') AS EXC_UP_QUA_YEAR,
  quarter(DATE(substr(CM_TX_DT,1,4)||'-'||substr(CM_TX_DT,5,2)||'-'||substr(CM_TX_DT,7,2))) AS EXC_QUA,
  days(CM_TX_DT2)-days(substr(CM_TX_DT2,1,4)||'-01-01')+1 AS days
FROM
    (
        SELECT
            CM_PROV_COD,
            CMSYS_DB_TIMESTAMP,
            CM_SYS_STS,
            CM_TX_DT,
            SUBSTR(CM_TX_DT,1,6)                                CM_TX_DY,
            SUBSTR(CM_TX_DT,1,4)||'-'||SUBSTR(CM_TX_DT,5,2)                     CM_TX_DY2,
            SUBSTR(CM_TX_DT,1,4)||'-01-01'                                      CM_TX_FD2,
            SUBSTR(CM_TX_DT,1,4)||'0101'                                        CM_TX_FD,
            SUBSTR(CM_TX_DT,1,4)||'-'||SUBSTR(CM_TX_DT,5,2)||'-03'              CM_TX_FIVE,
            SUBSTR(CM_TX_DT,5,2)                                                MONTH1,
            TO_CHAR(add_months(to_date(trim(CM_TX_DT),'YYYYMMDD'),-1),'YYYYMM')        upmonth,
            SUBSTR(CM_TX_DT,1,4)||'-'||SUBSTR(CM_TX_DT,5,2)||'-'||SUBSTR(CM_TX_DT,7,2) CM_TX_DT2,
            SUBSTR(CM_MONTH_BEG_DT,1,4)||'-'||SUBSTR(CM_MONTH_BEG_DT,5,2)||'-'||SUBSTR
            (CM_MONTH_BEG_DT,7,2) CM_MONTH_BEG_DT2,
            SUBSTR(CM_MONTH_END_DT,1,4)||'-'||SUBSTR(CM_MONTH_END_DT,5,2)||'-'||SUBSTR
            (CM_MONTH_END_DT,7,2)                       CM_MONTH_END_DT2,
            (INTEGER(SUBSTR(CM_TX_DT,1,4))-1)           upyear,
            (INTEGER(SUBSTR(CM_TX_DT,1,4))-1)||'12'           UP_YEAR_LAST_MONTH,
            (INTEGER(SUBSTR(CM_TX_DT,1,4))-1)||'-12-31' UP_YEAR_LAST_DAY,
            (INTEGER(SUBSTR(CM_TX_DT,1,4))-1)||'-01-01' UP_YEAR_FIRST_DAY,
          TO_CHAR(TO_DATE(CM_QUA_BEG_DT,'YYYY-MM-DD'),'YYYY-MM-DD')  CM_QUA_BEG_DT1,
           TO_CHAR(TO_DATE(CM_QUA_END_DT,'YYYY-MM-DD'),'YYYY-MM-DD')  CM_QUA_END_DT1,
            SUBSTR(CM_TX_DT,1,4)||'-'||'12-31'          ENDYEARDATE,
            CM_PRE_DT,
            CM_NEXT_DT,
            CM_MONTH_BEG_DT,
            CM_MONTH_END_DT,
            CM_QUA_BEG_DT,
            CM_QUA_END_DT,
            CM_TEST_LEVEL,
            CM_LOAD_STS,
            CM_PRE_DEAL_STS,
            CM_ETL_STS,
            FILLER1,
            SUBSTR(CM_TX_DT,1,4)          EXC_YEAR,
            INTEGER(SUBSTR(CM_TX_DT,7,2)) EXC_DAYS,
      INTEGER(SUBSTR(CM_MONTH_END_DT,7,2)) EXC_MONTH_DAYS
        FROM
            ETL_CMSYSHIS
        WHERE
            CM_PROV_COD = '913')
            
