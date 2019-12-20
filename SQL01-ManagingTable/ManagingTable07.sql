/*
Study the result of this SELECT statement:

SELECT * FROM t1;

C1	C2	C3	C4
1	2	3	4
5	6	7	8

If you issue this statement:

INSERT INTO t1 (c1,c2) VALUES (SELECT c1,c2 FROM t1);

Why will it fail? (Choose the best answer.)
*/
