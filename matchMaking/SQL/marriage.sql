DROP TABLE men;

CREATE TABLE men (
    id VARCHAR2(10) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR2(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

DROP SEQUENCE men_seq;

CREATE SEQUENCE men_seq
    START WITH 111
    NOCACHE;

DROP TABLE women;

CREATE TABLE women (
    id VARCHAR2(10) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR2(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

DROP SEQUENCE women_seq;

CREATE SEQUENCE women_seq
    START WITH 111
    NOCACHE;

DROP TABLE matching;

CREATE TABLE matching (
    match_num NUMBER PRIMARY KEY,
    men_id VARCHAR2(10) UNIQUE NOT NULL,
    women_id VARCHAR2(10) UNIQUE NOT NULL,
    manager_num NUMBER NOT NULL,
    married VARCHAR2(2) NULL
);

DROP SEQUENCE matching_seq;

CREATE SEQUENCE matching_seq
    START WITH 3
    NOCACHE;

DROP TABLE manager;

CREATE TABLE manager (
    manager_num NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    performance NUMBER NULL
);

DROP SEQUENCE manager_seq;

CREATE SEQUENCE manager_seq
    START WITH 4
    NOCACHE;



INSERT INTO men (id, name, age, job, salary, grade, count, manager_num, partner_id) VALUES ('A101', '��ö��', 28, '������',60000000, '���', 2,  1, 'B101');
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A102', 'ȫ�浿', 30, '����',1000000, '���', 3, 2);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A103', '�����', 30, '�л�',2000000, '�����', 3, 3);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A104', '������', 30, 'CEO',1000000000, '���̾�', 3, 3);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A105', '������', 48, '��������',100000000, '���̾�', 3, 2);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num, partner_id) VALUES ('A106', '�ڼ���', 37, '�ڿ�����',200000000, '���', 2, 2, 'B105');
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A107', '�ο��', 44, 'ī�����',50000000, '�����', 3, 2);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A108', '�ֹμ�', 34, '�߼ұ������',60000000, '�����', 2, 3);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A109', '����â', 40, 'IT����Ʈ�������',80000000, '�����', 2, 1);
INSERT INTO men (id, name, age, job, salary, grade, count, manager_num) VALUES ('A110', '��Թ�', 32, '�������',60000000, '���', 3, 2);


INSERT INTO women (id, name, age, job, salary, grade, count, manager_num, partner_id) VALUES ('B101', '�迵��', 30, '�繫��',50000000, '���', 2, 1, 'A101');
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B102', '���ǻ�', 33, '�ǻ�',80000000, '���̾�', 3, 3);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B103', '������', 28, '����',4000000, '���', 3, 1);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B104', '������', 25, '���',30000000, '���', 3, 1);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num, partner_id) VALUES ('B105', '�̳���', 28, '������',40000000, '���', 2, 2, 'A106');
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B106', '������', 40, '�渮',30000000, '�����', 2, 2);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B107', '�ɿ���', 44, '�߼ұ������',100000000, '���̾�', 2, 3);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B108', '�ų���', 30, '�¹���',50000000, '���', 1, 3);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B109', '�ڿ���', 28, '���������',40000000, '�����', 3, 1);
INSERT INTO women (id, name, age, job, salary, grade, count, manager_num) VALUES ('B110', '������', 32, '����',1000000, '�����', 3, 1);

INSERT INTO matching (match_num, men_id, women_id, manager_num)
VALUES (1, 'A101', 'B101', 1);
INSERT INTO matching (match_num, men_id, women_id, manager_num)
VALUES (2, 'A106', 'B105', 2);


INSERT INTO manager
VALUES (1, '����', 3);
INSERT INTO manager
VALUES (2, '������', 2);
INSERT INTO manager
VALUES (3, '������', 3);




COMMIT;