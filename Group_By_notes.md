# SQL GROUP BY – Short Notes

## What is GROUP BY?

**GROUP BY** is used to **combine rows that have the same values** in one or more columns and apply **aggregate functions** on them.

👉 It is mainly used with aggregate functions like:

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

---

## Why do we need GROUP BY?

* To summarize data
* To generate reports
* To calculate totals, averages, counts per category

**Example use cases:**

* Total sales per customer
* Number of orders per user
* Average salary per department

---

## Basic Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

---

## One Simple Example

### Table: `orders`

| order_id | customer | amount |
| -------- | -------- | ------ |
| 1        | Rahul    | 500    |
| 2        | Ankit    | 300    |
| 3        | Rahul    | 700    |
| 4        | Ankit    | 200    |
| 5        | Neha     | 400    |

---

### Query: Total amount spent by each customer

```sql
SELECT customer, SUM(amount) AS total_spent
FROM orders
GROUP BY customer;
```

### Result:

| customer | total_spent |
| -------- | ----------- |
| Rahul    | 1200        |
| Ankit    | 500         |
| Neha     | 400         |

---

## Important Rules (Interview Focus)

* All columns in `SELECT` must be either:

  * In `GROUP BY`, or
  * Inside an aggregate function
* `WHERE` is used **before** grouping
* `HAVING` is used **after** grouping (filter aggregated data)

---

## WHERE vs HAVING (Quick)

| WHERE                | HAVING              |
| -------------------- | ------------------- |
| Filters rows         | Filters groups      |
| Used before GROUP BY | Used after GROUP BY |

---

## Interview-ready One Liner

> "GROUP BY groups rows with the same values and applies aggregate functions to summarize data."

---

## Common Mistakes

❌ Using non-grouped column in SELECT
❌ Confusing WHERE and HAVING
❌ Forgetting aggregate functions

---

## When NOT to use GROUP BY

* When you need raw row-level data
* When no aggregation is required

---

End of GROUP BY Notes
