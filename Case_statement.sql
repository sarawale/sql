/****Write a query to add 10 units in Quantity and if Quantity is null then it should be 10 only***/
CREATE TABLE input1 (
    quantity   NUMBER(30) NULL
);

DROP TABLE input1;

INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( 2 );

INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( NULL );

INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( NULL );

INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( 3 );

SELECT
    *
FROM
    input1;

SELECT
    quantity,
    CASE
        WHEN quantity IS NOT NULL THEN quantity + 10
        ELSE + 10
    END AS updated_quantity
FROM
    input1;
