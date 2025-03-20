DROP TABLE expenses;

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY,
  amount numeric(10, 2),
  memo text,
  created_on DATE
);

ALTER TABLE expenses
ADD CHECK(amount >= 0.01);