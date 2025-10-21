-- 1. 영어영문학과(학과코드 002) 학생들의 학번과 이름, 입학 년도
-- 를 입학 년도가 빠른 순으로 표시하는 SQL 문장 작성
-- 단, 헤더는 "학번", "이름", "입학년도" 가 표시되도록 한다

SELECT * FROM TB_PROFESSOR;

SELECT STUDENT_NO 학번, STUDENT_NAME 이름, ENTRANCE_DATE 입학년도
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '002'
ORDER BY ENTRANCE_DATE;

-- 2. 춘 기술대학교의 교수 중 이름이 세 글자가 아닌 교수가 있다
-- 그 교수의 이름과 주민번호를 화면에 출력하는 SQL 문장 작성
-- 이때 올바르게 작성한 SQL 문장의 결과 값이 예상과 다르게 나올수있다
-- 원인이 무엇일지 생각해볼것

SELECT PROFESSOR_NAME, PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE PROFESSOR_NAME NOT LIKE '___';

-- 3. 남자 교수들의 이름과 나이를 출력하는 SQL 문장 작성
-- 단, 이때 나이가 적은 사람에서 많은 사람 순서로 화면에 출력되도록 만드시오
-- 단, 교수 중 2000년 이후 출생자는 없으며 출력 헤더는 "교수이름", "나이"
-- 나이는 '만'으로 계산한다

SELECT PROFESSOR_NAME AS 교수이름, 
FLOOR((MONTHS_BETWEEN(SYSDATE,  TO_DATE('19'||SUBSTR(PROFESSOR_SSN, 1, 6), 'RRMMDD')) / 12)) AS 나이
FROM TB_PROFESSOR
WHERE SUBSTR(PROFESSOR_SSN, 8, 1) = '1'
ORDER BY 나이;

-- 4. 교수들의 이름 중 성을 제외한 이름만 출력하는 SQL 문장 작성 
-- 출력 헤더는 "이름"이 찍히도록한다 (성이 2자인 경우의 교수는 없다고 가정)

SELECT SUBSTR(PROFESSOR_NAME, 2, 3)
FROM TB_PROFESSOR

-- 5. 춘 기술대학교의 재수생 입학자를 구하려고 한다. 어떻게 찾아낼 것인가?
-- 이때, 19살에 입학하면 재수를 하지 않은 것으로 간주한다






































































































