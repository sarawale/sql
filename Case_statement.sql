/****Write a query to add 20 units in Quantity and if Quantity is null then it should be 20 only***/
CREATE TABLE input1 (
    quantity   NUMBER(30) NULL
);


INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( 2 );

INSERT INTO input1 VALUES ( 3 );

INSERT INTO input1 VALUES ( NULL );

INSERT INTO input1 VALUES ( 1 );

INSERT INTO input1 VALUES ( NULL );

INSERT INTO input1 VALUES ( NULL );

INSERT INTO input1 VALUES ( 4 );

SELECT
    *
FROM
    input1;

SELECT
    quantity,
    CASE
        WHEN quantity IS NOT NULL THEN quantity + 20
        ELSE + 20
    END AS updated_quantity
FROM
    input1;
