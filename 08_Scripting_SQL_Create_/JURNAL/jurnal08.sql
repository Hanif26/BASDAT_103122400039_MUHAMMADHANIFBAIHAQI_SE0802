CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT,
    location_id INT
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    commission_pct DECIMAL(5,2),
    hire_date DATE NOT NULL,
    department_id INT,
    
    CONSTRAINT fk_dept
    FOREIGN KEY (department_id)
    REFERENCES department(department_id)
);

CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact VARCHAR(50)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    supplier_id INT,
    
    FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);

CREATE TABLE inventory_transaction (
    transaction_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    transaction_date DATE,
    
    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
);

ANALYZE TABLE department COMPUTE STATISTICS;
ANALYZE TABLE employee COMPUTE STATISTICS;
ANALYZE TABLE supplier COMPUTE STATISTICS;
ANALYZE TABLE product COMPUTE STATISTICS;
ANALYZE TABLE inventory_transaction COMPUTE STATISTICS;

INSERT INTO department VALUES (10, 'HR', 101, 1001);
INSERT INTO department VALUES (20, 'IT', 102, 1002);
INSERT INTO department VALUES (30, 'Finance', 103, 1003);
INSERT INTO department VALUES (40, 'Marketing', 104, 1004);
INSERT INTO department VALUES (50, 'Sales', 105, 1005);
INSERT INTO department VALUES (60, 'Logistic', 106, 1006);
INSERT INTO department VALUES (70, 'Support', 107, 1007);
INSERT INTO department VALUES (80, 'Engineering', 108, 1008);
INSERT INTO department VALUES (90, 'QA', 109, 1009);
INSERT INTO department VALUES (100, 'Admin', 110, 1010);

INSERT INTO employee VALUES (1, 'Andi', 'andi@mail.com', 5000, 0.1, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 80);
INSERT INTO employee VALUES (2, 'Budi', 'budi@mail.com', 6000, 0.2, TO_DATE('2022-02-01','YYYY-MM-DD'), 80);
INSERT INTO employee VALUES (3, 'Citra', 'citra@mail.com', 5500, 0.15, TO_DATE('2022-03-01','YYYY-MM-DD'), 10);
INSERT INTO employee VALUES (4, 'Dedi', 'dedi@mail.com', 7000, 0.25, TO_DATE('2022-04-01','YYYY-MM-DD'), 20);
INSERT INTO employee VALUES (5, 'Eka', 'eka@mail.com', 6500, 0.1, TO_DATE('2022-05-01','YYYY-MM-DD'), 30);
INSERT INTO employee VALUES (6, 'Fajar', 'fajar@mail.com', 6200, 0.12, TO_DATE('2022-06-01','YYYY-MM-DD'), 40);
INSERT INTO employee VALUES (7, 'Gina', 'gina@mail.com', 5800, 0.13, TO_DATE('2022-07-01','YYYY-MM-DD'), 50);
INSERT INTO employee VALUES (8, 'Hadi', 'hadi@mail.com', 7200, 0.2, TO_DATE('2022-08-01','YYYY-MM-DD'), 60);
INSERT INTO employee VALUES (9, 'Intan', 'intan@mail.com', 7100, 0.18, TO_DATE('2022-09-01','YYYY-MM-DD'), 70);
INSERT INTO employee VALUES (10, 'Joko', 'joko@mail.com', 8000, 0.3, TO_DATE('2022-10-01','YYYY-MM-DD'), 80);


INSERT INTO supplier VALUES (1, 'Supplier A', '0811111111');
INSERT INTO supplier VALUES (2, 'Supplier B', '0822222222');
INSERT INTO supplier VALUES (3, 'Supplier C', '0833333333');
INSERT INTO supplier VALUES (4, 'Supplier D', '0844444444');
INSERT INTO supplier VALUES (5, 'Supplier E', '0855555555');
INSERT INTO supplier VALUES (6, 'Supplier F', '0866666666');
INSERT INTO supplier VALUES (7, 'Supplier G', '0877777777');
INSERT INTO supplier VALUES (8, 'Supplier H', '0888888888');
INSERT INTO supplier VALUES (9, 'Supplier I', '0899999999');
INSERT INTO supplier VALUES (10, 'Supplier J', '0800000000');


INSERT INTO product VALUES (1, 'Laptop', 10000000, 10, 1);
INSERT INTO product VALUES (2, 'Mouse', 200000, 50, 2);
INSERT INTO product VALUES (3, 'Keyboard', 300000, 40, 3);
INSERT INTO product VALUES (4, 'Monitor', 2000000, 20, 4);
INSERT INTO product VALUES (5, 'Printer', 1500000, 15, 5);
INSERT INTO product VALUES (6, 'Scanner', 1200000, 10, 6);
INSERT INTO product VALUES (7, 'Speaker', 500000, 25, 7);
INSERT INTO product VALUES (8, 'Webcam', 400000, 30, 8);
INSERT INTO product VALUES (9, 'Router', 800000, 18, 9);
INSERT INTO product VALUES (10, 'Flashdisk', 100000, 100, 10);

INSERT INTO inventory_transaction VALUES (1, 1, 5, TO_DATE ('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (2, 2, 10, TO_DATE ('2024-01-02', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (3, 3, 8, TO_DATE ('2024-01-03', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (4, 4, 6, TO_DATE ('2024-01-04', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (5, 5, 7, TO_DATE ('2024-01-05', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (6, 6, 4, TO_DATE ('2024-01-06', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (7, 7, 9, TO_DATE ('2024-01-07', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (8, 8, 3, TO_DATE ('2024-01-08', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (9, 9, 2, TO_DATE ('2024-01-09', 'YYYY-MM-DD'));
INSERT INTO inventory_transaction VALUES (10, 10, 15, TO_DATE ('2024-01-10', 'YYYY-MM-DD'));

CREATE VIEW empvu80 AS
SELECT 
    employee_id AS id_number,
    last_name AS name,
    salary,
    department_id
FROM employee
WHERE department_id = 80;

DESC empvu80;

CREATE INDEX idx_employee_dept
ON employee(department_id);