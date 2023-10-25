# 실습 # 
 
-- DB 데이터조회 쿼리 --
select
	DISTINCT
	A.MBR_NM
    ,A.MBR_USER_ID
    ,A.MBR_PHONE
    ,B.BZPP_ORDER_NO
    ,C.PDT_NO
    ,C.PDT_NM
    ,B.BZPP_NM
    ,B.BZPP_PHONE
    ,B.BZPP_ADDR
    ,A.DEL_YN
from
	tbaxmm003 as A
    ,tbaxbm001 as B
    ,tbaxpm001 as C
where 1=1
and A.BZPP_ORDER_NO = B.BZPP_ORDER_NO
and B.PDT_SQNO = C.PDT_SQNO
;

-- 이름으로 검색
select
	DISTINCT
	A.MBR_NM
    ,A.MBR_USER_ID
    ,A.MBR_PHONE
    ,C.BZPP_ORDER_NO
    ,C.PDT_NO
    ,C.PDT_NM
    ,B.BZPP_NM
    ,B.BZPP_PHONE
    ,B.BZPP_ADDR
    ,A.DEL_YN
from
	tbaxmm003 as A  -- 회원정보
    ,tbaxbm001 as B  -- 사업자정보
    ,tbaxpm001 as C  -- 제품정보
where 1=1
and A.BZPP_ORDER_NO = B.BZPP_ORDER_NO
and B.PDT_SQNO = C.PDT_SQNO
and A.MBR_NM = '신하균';

-- 주문번호로 검색
select
	DISTINCT
	A.MBR_NM
    ,A.MBR_USER_ID
    ,A.MBR_PHONE
    ,C.BZPP_ORDER_NO
    ,C.PDT_NO
    ,C.PDT_NM
    ,B.BZPP_NM
    ,B.BZPP_PHONE
    ,B.BZPP_ADDR
    ,A.DEL_YN
from
	tbaxmm003 as A  -- 회원정보
    ,tbaxbm001 as B  -- 사업자정보
    ,tbaxpm001 as C  -- 제품정보
where 1=1
and A.BZPP_ORDER_NO = B.BZPP_ORDER_NO
and B.PDT_SQNO = C.PDT_SQNO
and C.BZPP_ORDER_NO = 'ORDER4';

-- 사업자명으로 검색
select
	DISTINCT
	A.MBR_NM
    ,A.MBR_USER_ID
    ,A.MBR_PHONE
    ,C.BZPP_ORDER_NO
    ,C.PDT_NO
    ,C.PDT_NM
    ,B.BZPP_NM
    ,B.BZPP_PHONE
    ,B.BZPP_ADDR
    ,A.DEL_YN
from
	tbaxmm003 as A  -- 회원정보
    ,tbaxbm001 as B  -- 사업자정보
    ,tbaxpm001 as C  -- 제품정보
where 1=1
and A.BZPP_ORDER_NO = B.BZPP_ORDER_NO
and B.PDT_SQNO = C.PDT_SQNO
and B.BZPP_NM = '마녀공장'
;
