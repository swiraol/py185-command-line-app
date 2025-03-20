DROP TABLE expenses;

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY,
  amount numeric(10, 2),
  memo text,
  created_on DATE
);

ALTER TABLE expenses
ADD CHECK(amount >= 0.01);

DELETE FROM expenses;
INSERT INTO expenses (amount, memo, created_on)
VALUES (14.56, 'Pencils', NOW()),
       (3.29, 'Coffee', NOW()),
       (49.99, 'Text Editor', NOW());